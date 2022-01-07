
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STcpFd ;


 int taosCleanUpTcpFdObj (int *) ;

void taosCloseTcpClientConnection(void *chandle) {
  STcpFd *pFdObj = (STcpFd *)chandle;

  if (pFdObj == ((void*)0)) return;

  taosCleanUpTcpFdObj(pFdObj);
}
