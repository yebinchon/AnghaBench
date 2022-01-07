
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vmutex; } ;
struct TYPE_4__ {scalar_t__ pCachePool; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SCachePool ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vnodeCreateCommitThread (TYPE_1__*) ;

void vnodeProcessCommitTimer(void *param, void *tmrId) {
  SVnodeObj * pVnode = (SVnodeObj *)param;
  SCachePool *pPool = (SCachePool *)pVnode->pCachePool;

  pthread_mutex_lock(&pPool->vmutex);

  vnodeCreateCommitThread(pVnode);

  pthread_mutex_unlock(&pPool->vmutex);
}
