
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ maxSessions; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;


 int atomic_store_32 (int *,int) ;
 int tsMaxVnode ;
 int tsOpenVnodes ;
 TYPE_2__* vnodeList ;

void vnodeCalcOpenVnodes() {
  int openVnodes = 0;
  for (int vnode = 0; vnode <= tsMaxVnode; ++vnode) {
    if (vnodeList[vnode].cfg.maxSessions <= 0) continue;
    openVnodes++;
  }

  atomic_store_32(&tsOpenVnodes, openVnodes);
}
