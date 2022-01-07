
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numOfThreads; int label; TYPE_1__* pThreads; int thread; } ;
struct TYPE_5__ {int threadMutex; int fdReady; int thread; scalar_t__ pHead; int pollFd; } ;
typedef TYPE_1__ HttpThread ;
typedef TYPE_2__ HttpServer ;


 int httpCleanUpContext (scalar_t__) ;
 int httpTrace (char*,int ) ;
 int pthread_cancel (int ) ;
 int pthread_cond_destroy (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int taosCloseSocket (int ) ;
 int tfree (TYPE_1__*) ;

void httpCleanUpConnect(HttpServer *pServer) {
  int i;
  HttpThread *pThread;

  if (pServer == ((void*)0)) return;

  pthread_cancel(pServer->thread);
  pthread_join(pServer->thread, ((void*)0));

  for (i = 0; i < pServer->numOfThreads; ++i) {
    pThread = pServer->pThreads + i;
    taosCloseSocket(pThread->pollFd);

    while (pThread->pHead) {
      httpCleanUpContext(pThread->pHead);
    }

    pthread_cancel(pThread->thread);
    pthread_join(pThread->thread, ((void*)0));
    pthread_cond_destroy(&(pThread->fdReady));
    pthread_mutex_destroy(&(pThread->threadMutex));
  }

  tfree(pServer->pThreads);
  httpTrace("http server:%s is cleaned up", pServer->label);
}
