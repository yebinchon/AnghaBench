
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* dmQhandle ;
 void** malloc (int) ;
 void** rpcQhandle ;
 void* taosInitScheduler (int ,int,char*) ;
 int tsMaxQueues ;
 double tsNumOfCores ;
 double tsNumOfThreadsPerCore ;
 double tsRatioOfQueryThreads ;
 int tsSessionsPerVnode ;

void vnodeInitQHandle() {
  tsMaxQueues = (1.0 - tsRatioOfQueryThreads)*tsNumOfCores*tsNumOfThreadsPerCore / 2.0;
  if (tsMaxQueues < 1) tsMaxQueues = 1;

  rpcQhandle = malloc(tsMaxQueues*sizeof(void *));

  for (int i=0; i< tsMaxQueues; ++i )
    rpcQhandle[i] = taosInitScheduler(tsSessionsPerVnode, 1, "dnode");

  dmQhandle = taosInitScheduler(tsSessionsPerVnode, 1, "mgmt");
}
