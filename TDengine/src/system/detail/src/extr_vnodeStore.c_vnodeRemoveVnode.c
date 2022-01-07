
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {scalar_t__ maxSessions; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;


 int TSDB_CODE_SUCCESS ;
 int dTrace (char*,int,scalar_t__) ;
 int vnodeCalcOpenVnodes () ;
 int vnodeCloseVnode (int) ;
 TYPE_2__* vnodeList ;
 int vnodeRemoveDataFiles (int) ;

int vnodeRemoveVnode(int vnode) {
  if (vnodeList == ((void*)0)) return TSDB_CODE_SUCCESS;

  if (vnodeList[vnode].cfg.maxSessions > 0) {
    int32_t ret = vnodeCloseVnode(vnode);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }

    vnodeRemoveDataFiles(vnode);
  } else {
    dTrace("vid:%d, max sessions:%d, this vnode already dropped!!!", vnode, vnodeList[vnode].cfg.maxSessions);
    vnodeList[vnode].cfg.maxSessions = 0;
    vnodeCalcOpenVnodes();
  }

  return TSDB_CODE_SUCCESS;
}
