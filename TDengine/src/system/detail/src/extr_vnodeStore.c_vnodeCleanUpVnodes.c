
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ commitThread; scalar_t__ pCachePool; int status; } ;


 int TSDB_MAX_VNODES ;
 int TSDB_STATUS_OFFLINE ;
 int dmutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taosMsleep (int) ;
 int vnodeCleanUpCommit (int) ;
 int vnodeClosePeerVnode (int) ;
 TYPE_1__* vnodeList ;
 int vnodeProcessCommitTimer (TYPE_1__*,int *) ;

void vnodeCleanUpVnodes() {
  static int again = 0;
  if (vnodeList == ((void*)0)) return;

  pthread_mutex_lock(&dmutex);

  if (again) {
    pthread_mutex_unlock(&dmutex);
    return;
  }
  again = 1;

  for (int vnode = 0; vnode < TSDB_MAX_VNODES; ++vnode) {
    if (vnodeList[vnode].pCachePool) {
      vnodeList[vnode].status = TSDB_STATUS_OFFLINE;
      vnodeClosePeerVnode(vnode);
    }
  }

  pthread_mutex_unlock(&dmutex);

  for (int vnode = 0; vnode < TSDB_MAX_VNODES; ++vnode) {
    if (vnodeList[vnode].pCachePool) {
      vnodeProcessCommitTimer(vnodeList + vnode, ((void*)0));
      while (vnodeList[vnode].commitThread != 0) {
        taosMsleep(10);
      }
      vnodeCleanUpCommit(vnode);
    }
  }
}
