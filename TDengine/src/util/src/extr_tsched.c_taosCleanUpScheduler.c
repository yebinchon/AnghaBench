
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numOfThreads; struct TYPE_5__* qthread; struct TYPE_5__* queue; int queueMutex; int fullSem; int emptySem; } ;
typedef TYPE_1__ SSchedQueue ;


 int free (TYPE_1__*) ;
 int pthread_cancel (TYPE_1__) ;
 int pthread_join (TYPE_1__,int *) ;
 int pthread_mutex_destroy (int *) ;
 int tsem_destroy (int *) ;

void taosCleanUpScheduler(void *param) {
  SSchedQueue *pSched = (SSchedQueue *)param;
  if (pSched == ((void*)0)) return;

  for (int i = 0; i < pSched->numOfThreads; ++i) {
    pthread_cancel(pSched->qthread[i]);
  }
  for (int i = 0; i < pSched->numOfThreads; ++i) {
    pthread_join(pSched->qthread[i], ((void*)0));
  }

  tsem_destroy(&pSched->emptySem);
  tsem_destroy(&pSched->fullSem);
  pthread_mutex_destroy(&pSched->queueMutex);

  free(pSched->queue);
  free(pSched->qthread);
  free(pSched);
}
