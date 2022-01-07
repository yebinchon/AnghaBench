
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TSDB_MAX_VNODES ;
 int dPrint (char*) ;
 int mgmtStopSystem () ;
 int vnodeRemoveVnode (int) ;

void dnodeResetSystem() {
  dPrint("reset the system ...");
  for (int vnode = 0; vnode < TSDB_MAX_VNODES; ++vnode) vnodeRemoveVnode(vnode);
  mgmtStopSystem();
}
