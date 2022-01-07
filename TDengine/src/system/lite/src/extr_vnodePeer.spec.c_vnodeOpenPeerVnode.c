
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int replications; } ;
struct TYPE_6__ {TYPE_1__ cfg; int status; } ;
typedef TYPE_2__ SVnodeObj ;


 int TSDB_STATUS_MASTER ;
 int TSDB_STATUS_UNSYNCED ;
 int dTrace (char*,int,int ,int) ;
 TYPE_2__* vnodeList ;
 int vnodeUpdateStreamRole (TYPE_2__*) ;

int vnodeOpenPeerVnode(int vnode) {
  SVnodeObj *pVnode = vnodeList + vnode;
  pVnode->status = (pVnode->cfg.replications > 1) ? TSDB_STATUS_UNSYNCED : TSDB_STATUS_MASTER;
  dTrace("vid:%d, vnode status:%d numOfPeers:%d", vnode, pVnode->status, pVnode->cfg.replications-1);
  vnodeUpdateStreamRole(pVnode);
  return 0;
}
