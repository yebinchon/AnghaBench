
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int queryQhandle ;
 int taosInitScheduler (int,int,char*) ;
 int tsNumOfCores ;
 int tsNumOfThreadsPerCore ;
 int tsNumOfVnodesPerCore ;
 int tsRatioOfQueryThreads ;
 int tsSessionsPerVnode ;

bool vnodeInitQueryHandle() {
  int numOfThreads = tsRatioOfQueryThreads * tsNumOfCores * tsNumOfThreadsPerCore;
  if (numOfThreads < 1) numOfThreads = 1;
  queryQhandle = taosInitScheduler(tsNumOfVnodesPerCore * tsNumOfCores * tsSessionsPerVnode, numOfThreads, "query");
  return 1;
}
