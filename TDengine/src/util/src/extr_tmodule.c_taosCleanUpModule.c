
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queueSize; TYPE_2__* queue; int stmMutex; int queueMutex; int fullSem; int emptySem; int thread; int (* cleanUp ) () ;} ;
typedef TYPE_1__ module_t ;
struct TYPE_6__ {struct TYPE_6__* msg; } ;


 int memset (TYPE_1__*,int ,int) ;
 int pthread_cancel (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int stub1 () ;
 scalar_t__ taosCheckPthreadValid (int ) ;
 int taosResetPthread (int *) ;
 int tfree (TYPE_2__*) ;
 int tsem_destroy (int *) ;

void taosCleanUpModule(module_t *pMod) {
  int i;

  if (pMod->cleanUp) pMod->cleanUp();

  if (taosCheckPthreadValid(pMod->thread)) {
    pthread_cancel(pMod->thread);
    pthread_join(pMod->thread, ((void*)0));
  }

  taosResetPthread(&pMod->thread);
  tsem_destroy(&pMod->emptySem);
  tsem_destroy(&pMod->fullSem);
  pthread_mutex_destroy(&pMod->queueMutex);
  pthread_mutex_destroy(&pMod->stmMutex);

  for (i = 0; i < pMod->queueSize; ++i) {
    tfree(pMod->queue[i].msg);
  }

  tfree(pMod->queue);

  memset(pMod, 0, sizeof(module_t));
}
