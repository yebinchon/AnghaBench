
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int vmutex; int notFreeSlots; int vnode; scalar_t__ commitInProcess; } ;
struct TYPE_6__ {int commitTime; } ;
struct TYPE_7__ {int commitTimer; TYPE_1__ cfg; scalar_t__ pCachePool; } ;
typedef TYPE_2__ SVnodeObj ;
typedef TYPE_3__ SCachePool ;


 int dTrace (char*,int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taosTmrReset (int ,int,TYPE_2__*,int ,int *) ;
 int vnodeProcessCommitTimer ;
 int vnodeTmrCtrl ;

void vnodeCommitOver(SVnodeObj *pVnode) {
  SCachePool *pPool = (SCachePool *)(pVnode->pCachePool);

  taosTmrReset(vnodeProcessCommitTimer, pVnode->cfg.commitTime * 1000, pVnode, vnodeTmrCtrl, &pVnode->commitTimer);

  pthread_mutex_lock(&pPool->vmutex);

  pPool->commitInProcess = 0;
  dTrace("vid:%d, commit is over, notFreeSlots:%d", pPool->vnode, pPool->notFreeSlots);

  pthread_mutex_unlock(&pPool->vmutex);
}
