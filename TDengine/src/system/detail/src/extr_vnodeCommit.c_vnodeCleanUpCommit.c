
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ commitLog; } ;
struct TYPE_5__ {scalar_t__ logFd; int logMutex; int logFn; TYPE_1__ cfg; } ;
typedef TYPE_2__ SVnodeObj ;


 scalar_t__ VALIDFD (scalar_t__) ;
 int close (scalar_t__) ;
 int dError (char*,int,int ) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ remove (int ) ;
 int taosLogError (char*,int,int ) ;
 TYPE_2__* vnodeList ;

void vnodeCleanUpCommit(int vnode) {
  SVnodeObj *pVnode = vnodeList + vnode;

  if (VALIDFD(pVnode->logFd)) close(pVnode->logFd);

  if (pVnode->cfg.commitLog && (pVnode->logFd > 0 && remove(pVnode->logFn) < 0)) {
    dError("vid:%d, failed to remove:%s", vnode, pVnode->logFn);
    taosLogError("vid:%d, failed to remove:%s", vnode, pVnode->logFn);
  }

  pthread_mutex_destroy(&(pVnode->logMutex));
}
