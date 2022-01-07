
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ maxSessions; int precision; } ;
struct TYPE_5__ {int vnode; int numOfFiles; int fileId; int version; int vmutex; int * pCachePool; TYPE_1__ cfg; int firstKey; } ;
typedef TYPE_2__ SVnodeObj ;


 int dError (char*,int) ;
 int dTrace (char*,int,int ,int ,int ) ;
 int pthread_mutex_init (int *,int *) ;
 int taosGetTimestamp (int ) ;
 scalar_t__ vnodeInitCommit (int) ;
 scalar_t__ vnodeInitFile (int) ;
 TYPE_2__* vnodeList ;
 int * vnodeOpenCachePool (int) ;
 int vnodeOpenMetersVnode (int) ;

int vnodeInitStoreVnode(int vnode) {
  SVnodeObj *pVnode = vnodeList + vnode;

  pVnode->vnode = vnode;
  vnodeOpenMetersVnode(vnode);
  if (pVnode->cfg.maxSessions == 0) return 0;

  pVnode->firstKey = taosGetTimestamp(pVnode->cfg.precision);

  pVnode->pCachePool = vnodeOpenCachePool(vnode);
  if (pVnode->pCachePool == ((void*)0)) {
    dError("vid:%d, cache pool init failed.", pVnode->vnode);
    return -1;
  }

  if (vnodeInitFile(vnode) < 0) return -1;



  if (vnodeInitCommit(vnode) < 0) {
    dError("vid:%d, commit init failed.", pVnode->vnode);
    return -1;
  }

  pthread_mutex_init(&(pVnode->vmutex), ((void*)0));
  dTrace("vid:%d, storage initialized, version:%ld fileId:%d numOfFiles:%d", vnode, pVnode->version, pVnode->fileId,
         pVnode->numOfFiles);

  return 0;
}
