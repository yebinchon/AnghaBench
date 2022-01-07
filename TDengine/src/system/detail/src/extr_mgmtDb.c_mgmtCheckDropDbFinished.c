
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int name; TYPE_3__* pHead; } ;
struct TYPE_11__ {scalar_t__ status; int privateIp; TYPE_1__* vload; } ;
struct TYPE_10__ {int numOfVnodes; struct TYPE_10__* next; TYPE_2__* vnodeGid; } ;
struct TYPE_9__ {size_t vnode; int ip; } ;
struct TYPE_8__ {scalar_t__ dropStatus; } ;
typedef TYPE_1__ SVnodeLoad ;
typedef TYPE_2__ SVnodeGid ;
typedef TYPE_3__ SVgObj ;
typedef TYPE_4__ SDnodeObj ;
typedef TYPE_5__ SDbObj ;


 scalar_t__ TSDB_STATUS_OFFLINE ;
 scalar_t__ TSDB_VN_STATUS_DROPPING ;
 int mPrint (char*,int ) ;
 int mTrace (char*,int ,size_t,int ) ;
 TYPE_4__* mgmtGetDnode (int ) ;
 int taosIpStr (int ) ;

bool mgmtCheckDropDbFinished(SDbObj *pDb) {
  SVgObj *pVgroup = pDb->pHead;
  while (pVgroup) {
    for (int i = 0; i < pVgroup->numOfVnodes; i++) {
      SVnodeGid *pVnodeGid = pVgroup->vnodeGid + i;
      SDnodeObj *pDnode = mgmtGetDnode(pVnodeGid->ip);

      if (pDnode == ((void*)0)) continue;
      if (pDnode->status == TSDB_STATUS_OFFLINE) continue;

      SVnodeLoad *pVload = &pDnode->vload[pVnodeGid->vnode];
      if (pVload->dropStatus == TSDB_VN_STATUS_DROPPING) {
        mTrace("dnode:%s, vnode:%d db:%s wait dropping", taosIpStr(pDnode->privateIp), pVnodeGid->vnode, pDb->name);
        return 0;
      }
    }
    pVgroup = pVgroup->next;
  }

  mPrint("db:%s all vnodes drop finished", pDb->name);
  return 1;
}
