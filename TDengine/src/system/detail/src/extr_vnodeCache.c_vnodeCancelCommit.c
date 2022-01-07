
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int commitTime; } ;
struct TYPE_7__ {int commitTimer; TYPE_1__ cfg; scalar_t__ pCachePool; } ;
typedef TYPE_2__ SVnodeObj ;
typedef int SCachePool ;


 int taosTmrReset (int ,int,TYPE_2__*,int ,int *) ;
 int vnodeProcessCommitTimer ;
 int vnodeTmrCtrl ;
 int vnodeWaitForCommitComplete (TYPE_2__*) ;

void vnodeCancelCommit(SVnodeObj *pVnode) {
  SCachePool *pPool = (SCachePool *)(pVnode->pCachePool);
  if (pPool == ((void*)0)) return;

  vnodeWaitForCommitComplete(pVnode);
  taosTmrReset(vnodeProcessCommitTimer, pVnode->cfg.commitTime * 1000, pVnode, vnodeTmrCtrl, &pVnode->commitTimer);
}
