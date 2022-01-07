
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TSDB_MAX_VNODES ;
 int dError (char*) ;
 int * taosTmrInit (scalar_t__,int,int,char*) ;
 scalar_t__ tsSessionsPerVnode ;
 int tsVnodePeers ;
 int * vnodeTmrCtrl ;

bool vnodeInitTmrCtl() {
  vnodeTmrCtrl = taosTmrInit(TSDB_MAX_VNODES * (tsVnodePeers + 10) + tsSessionsPerVnode + 1000, 200, 60000, "DND-vnode");
  if (vnodeTmrCtrl == ((void*)0)) {
    dError("failed to init timer, exit");
    return 0;
  }
  return 1;
}
