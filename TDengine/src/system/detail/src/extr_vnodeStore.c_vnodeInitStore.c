
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVnodeObj ;


 int TSDB_MAX_VNODES ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;
 scalar_t__ vnodeInitInfo () ;
 scalar_t__ vnodeInitStoreVnode (int) ;
 int * vnodeList ;

int vnodeInitStore() {
  int vnode;
  int size;

  size = sizeof(SVnodeObj) * TSDB_MAX_VNODES;
  vnodeList = (SVnodeObj *)malloc(size);
  if (vnodeList == ((void*)0)) return -1;
  memset(vnodeList, 0, size);

  if (vnodeInitInfo() < 0) return -1;

  for (vnode = 0; vnode < TSDB_MAX_VNODES; ++vnode) {
    if (vnodeInitStoreVnode(vnode) < 0) {

      return -1;
    }
  }

  return 0;
}
