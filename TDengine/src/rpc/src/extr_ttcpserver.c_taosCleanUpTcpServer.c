
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numOfThreads; int label; struct TYPE_4__* pThreadObj; int threadMutex; int fdReady; int thread; int pollFd; scalar_t__ pHead; } ;
typedef TYPE_1__ SThreadObj ;
typedef TYPE_1__ SServerObj ;


 int close (int ) ;
 int pthread_cancel (int ) ;
 int pthread_cond_destroy (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int tTrace (char*,int ) ;
 int taosCleanUpFdObj (scalar_t__) ;
 int tfree (TYPE_1__*) ;

void taosCleanUpTcpServer(void *handle) {
  int i;
  SThreadObj *pThreadObj;
  SServerObj *pServerObj = (SServerObj *)handle;

  if (pServerObj == ((void*)0)) return;

  pthread_cancel(pServerObj->thread);
  pthread_join(pServerObj->thread, ((void*)0));

  for (i = 0; i < pServerObj->numOfThreads; ++i) {
    pThreadObj = pServerObj->pThreadObj + i;

    while (pThreadObj->pHead) {
      taosCleanUpFdObj(pThreadObj->pHead);
      pThreadObj->pHead = pThreadObj->pHead;
    }

    close(pThreadObj->pollFd);
    pthread_cancel(pThreadObj->thread);
    pthread_join(pThreadObj->thread, ((void*)0));
    pthread_cond_destroy(&(pThreadObj->fdReady));
    pthread_mutex_destroy(&(pThreadObj->threadMutex));
  }

  tfree(pServerObj->pThreadObj);
  tTrace("TCP:%s, TCP server is cleaned up", pServerObj->label);

  tfree(pServerObj);
}
