
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* vload; } ;
struct TYPE_9__ {int vnode; int ip; } ;
struct TYPE_8__ {int vgId; } ;
typedef TYPE_1__ SVnodeLoad ;
typedef TYPE_2__ SVnodeGid ;
typedef TYPE_3__ SDnodeObj ;


 int mError (char*,int ) ;
 int mTrace (char*,int ,int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int mgmtCalcNumOfFreeVnodes (TYPE_3__*) ;
 TYPE_3__* mgmtGetDnode (int ) ;
 int taosIpStr (int ) ;

void mgmtUnSetDnodeVgid(SVnodeGid vnodeGid[], int numOfVnodes) {
  SDnodeObj *pDnode;

  for (int i = 0; i < numOfVnodes; ++i) {
    pDnode = mgmtGetDnode(vnodeGid[i].ip);
    if (pDnode) {
      SVnodeLoad *pVload = pDnode->vload + vnodeGid[i].vnode;
      mTrace("dnode:%s, vnode:%d remove from vgroup:%d", taosIpStr(vnodeGid[i].ip), vnodeGid[i].vnode, pVload->vgId);
      memset(pVload, 0, sizeof(SVnodeLoad));
      mgmtCalcNumOfFreeVnodes(pDnode);
    } else {
      mError("dnode:%s not in dnode DB!!!", taosIpStr(vnodeGid[i].ip));
    }
  }
}
