
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; int streamRole; int vnode; } ;
typedef TYPE_1__ SVnodeObj ;


 scalar_t__ TSDB_STATUS_MASTER ;
 int dTrace (char*,int ,int) ;
 int vnodeCloseStream (TYPE_1__*) ;
 int vnodeOpenStreams (TYPE_1__*,int *) ;

void vnodeUpdateStreamRole(SVnodeObj *pVnode) {


  int newRole = (pVnode->status == TSDB_STATUS_MASTER) ? 1 : 0;
  if (newRole != pVnode->streamRole) {
    dTrace("vid:%d, stream role is changed to:%d", pVnode->vnode, newRole);
    pVnode->streamRole = newRole;
    if (newRole) {
      vnodeOpenStreams(pVnode, ((void*)0));
    } else {
      vnodeCloseStream(pVnode);
    }
  } else {
    dTrace("vid:%d, stream role is keep to:%d", pVnode->vnode, newRole);
  }
}
