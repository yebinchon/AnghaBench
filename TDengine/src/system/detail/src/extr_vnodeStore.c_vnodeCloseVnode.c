
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ maxSessions; } ;
struct TYPE_9__ {int meterIndex; int vmutex; TYPE_1__ cfg; } ;
typedef TYPE_2__ SVnodeObj ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int TSDB_CODE_SUCCESS ;
 int dmutex ;
 int memset (TYPE_2__*,int ,int) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tfree (int ) ;
 int tsMaxVnode ;
 int vnodeCalcOpenVnodes () ;
 int vnodeCancelCommit (TYPE_2__*) ;
 int vnodeCleanUpCommit (int) ;
 int vnodeCloseCachePool (int) ;
 int vnodeCloseMetersVnode (int) ;
 int vnodeClosePeerVnode (int) ;
 int vnodeCloseShellVnode (int) ;
 int vnodeCloseStream (TYPE_2__*) ;
 TYPE_2__* vnodeList ;
 int vnodeMarkAllMetersDropped (TYPE_2__*) ;

int vnodeCloseVnode(int vnode) {
  if (vnodeList == ((void*)0)) return TSDB_CODE_SUCCESS;

  SVnodeObj* pVnode = &vnodeList[vnode];

  pthread_mutex_lock(&dmutex);
  if (pVnode->cfg.maxSessions == 0) {
    pthread_mutex_unlock(&dmutex);
    return TSDB_CODE_SUCCESS;
  }


  if (vnodeMarkAllMetersDropped(pVnode) != TSDB_CODE_SUCCESS) {
    pthread_mutex_unlock(&dmutex);
    return TSDB_CODE_ACTION_IN_PROGRESS;
  }

  vnodeCloseStream(vnodeList + vnode);
  vnodeCancelCommit(vnodeList + vnode);
  vnodeClosePeerVnode(vnode);
  vnodeCloseMetersVnode(vnode);
  vnodeCloseShellVnode(vnode);
  vnodeCloseCachePool(vnode);
  vnodeCleanUpCommit(vnode);

  pthread_mutex_destroy(&(vnodeList[vnode].vmutex));

  if (tsMaxVnode == vnode) tsMaxVnode = vnode - 1;

  tfree(vnodeList[vnode].meterIndex);
  memset(vnodeList + vnode, 0, sizeof(SVnodeObj));

  vnodeCalcOpenVnodes();

  pthread_mutex_unlock(&dmutex);
  return TSDB_CODE_SUCCESS;
}
