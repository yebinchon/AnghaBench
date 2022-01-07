
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_9__ {int commitInProcess; } ;
struct TYPE_7__ {int commitTime; } ;
struct TYPE_8__ {scalar_t__ status; int commitThread; int vnode; int commitTimer; TYPE_1__ cfg; scalar_t__ pCachePool; } ;
typedef TYPE_2__ SVnodeObj ;
typedef TYPE_3__ SCachePool ;


 int PTHREAD_CREATE_DETACHED ;
 scalar_t__ TSDB_STATUS_UNSYNCED ;
 int dError (char*,int ,int ) ;
 int dTrace (char*,int ,...) ;
 int errno ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,TYPE_2__*) ;
 int strerror (int ) ;
 int taosTmrReset (int ,int,TYPE_2__*,int ,int *) ;
 int taosTmrStopA (int *) ;
 int vnodeCommitToFile ;
 int vnodeProcessCommitTimer ;
 int vnodeTmrCtrl ;

pthread_t vnodeCreateCommitThread(SVnodeObj *pVnode) {


  pthread_attr_t thattr;
  SCachePool * pPool = (SCachePool *)pVnode->pCachePool;

  if (pPool->commitInProcess) {
    dTrace("vid:%d, commit is already in process", pVnode->vnode);
    return pVnode->commitThread;
  }

  taosTmrStopA(&pVnode->commitTimer);

  if (pVnode->status == TSDB_STATUS_UNSYNCED) {
    taosTmrReset(vnodeProcessCommitTimer, pVnode->cfg.commitTime * 1000, pVnode, vnodeTmrCtrl, &pVnode->commitTimer);
    dTrace("vid:%d, it is in unsyc state, commit later", pVnode->vnode);
    return pVnode->commitThread;
  }

  pthread_attr_init(&thattr);
  pthread_attr_setdetachstate(&thattr, PTHREAD_CREATE_DETACHED);
  if (pthread_create(&(pVnode->commitThread), &thattr, vnodeCommitToFile, pVnode) != 0) {
    dError("vid:%d, failed to create thread to commit file, reason:%s", pVnode->vnode, strerror(errno));
  } else {
    pPool->commitInProcess = 1;
    dTrace("vid:%d, commit thread: 0x%lx is created", pVnode->vnode, pVnode->commitThread);
  }

  pthread_attr_destroy(&thattr);

  return pVnode->commitThread;
}
