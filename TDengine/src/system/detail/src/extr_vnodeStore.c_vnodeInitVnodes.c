
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TSDB_MAX_VNODES ;
 scalar_t__ vnodeOpenVnode (int) ;

int vnodeInitVnodes() {
  int vnode;

  for (vnode = 0; vnode < TSDB_MAX_VNODES; ++vnode) {
    if (vnodeOpenVnode(vnode) < 0) return -1;
  }

  return 0;
}
