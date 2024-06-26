dependency<-function()
{
  if (!requireNamespace("BiocManager"))
    install.packages("BiocManager")
  if(require('graph')==F)
  {
    BiocManager::install('graph')
  }
  if(require('dbnR')==F)
  {
    install.packages('dbnR')
  }
  if(require('ranger')==F)
  {
    install.packages('ranger')
  }
  if(require('igraph')==F)
  {
    install.packages("igraph", type = "binary")
  }
  if(require('parallel') == F)
  {
    install.packages('parallel')
  }
  if(require('shinyjs') == F)
  {
    install.packages("shinyjs")
  }
  if(require('dplyr') == F)
  {
    install.packages("dplyr")
  }
  if(require('visNetwork')==F)
  {
    install.packages("visNetwork_2.0.9.tar.gz",repos=NULL, type="source")
  }
  if(require('RBGL')==F)
  {
    BiocManager::install('RBGL')
  }
  if(require('Rgraphviz')==F)
  {
    BiocManager::install('Rgraphviz')
  }
  if(require('gRbase')==F)
  {
    install.packages('gRbase')
  }
  if(require('gRain')==F)
  {
    install.packages('gRain')
  }
  if(!"RCy3" %in% installed.packages()){
    BiocManager::install("RCy3")
  }
  library(RCy3)
  if(require('reticulate')==F){
    install.packages("reticulate")
    conda_create("wiser")
    #conda_install("wiser", "pytorch")
    #conda_install("wiser", "matplotlib")
    #conda_install("wiser", "networkx")
    #conda_install("wiser", "pandas")
    #conda_install("wiser", "scipy")
    #conda_install("wiser", "scikit-learn")
  }
  if(packageVersion("visNetwork")!='2.0.9'){
    detach("package:visNetwork", unload = TRUE)
    install.packages("visNetwork_2.0.9.tar.gz",repos=NULL, type="source")
  }
}
