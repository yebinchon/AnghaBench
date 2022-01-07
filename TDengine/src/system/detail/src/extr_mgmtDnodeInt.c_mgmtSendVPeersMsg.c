
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ thandle; TYPE_1__* vload; } ;
struct TYPE_13__ {int numOfVnodes; TYPE_2__* vnodeGid; int vgId; } ;
struct TYPE_12__ {size_t vnode; int ip; } ;
struct TYPE_11__ {int vgId; } ;
typedef TYPE_3__ SVgObj ;
typedef TYPE_4__ SDnodeObj ;


 int TSDB_MSG_TYPE_VPEERS ;
 int mError (char*,int ) ;
 char* mgmtBuildVpeersIe (char*,TYPE_3__*,size_t) ;
 TYPE_4__* mgmtGetDnode (int ) ;
 int mgmtUpdateDnode (TYPE_4__*) ;
 char* taosBuildReqMsgToDnode (TYPE_4__*,int ) ;
 int taosIpStr (int ) ;
 int taosSendMsgToDnode (TYPE_4__*,char*,int) ;

int mgmtSendVPeersMsg(SVgObj *pVgroup) {
  SDnodeObj *pDnode;
  char * pMsg, *pStart;
  int msgLen = 0;

  for (int i = 0; i < pVgroup->numOfVnodes; ++i) {
    pDnode = mgmtGetDnode(pVgroup->vnodeGid[i].ip);
    if (pDnode == ((void*)0)) {
      mError("dnode:%s not there", taosIpStr(pVgroup->vnodeGid[i].ip));
      continue;
    }

    pDnode->vload[pVgroup->vnodeGid[i].vnode].vgId = pVgroup->vgId;
    mgmtUpdateDnode(pDnode);

    if (pDnode->thandle && pVgroup->numOfVnodes >= 1) {
      pStart = taosBuildReqMsgToDnode(pDnode, TSDB_MSG_TYPE_VPEERS);
      if (pStart == ((void*)0)) continue;
      pMsg = mgmtBuildVpeersIe(pStart, pVgroup, pVgroup->vnodeGid[i].vnode);
      msgLen = pMsg - pStart;

      taosSendMsgToDnode(pDnode, pStart, msgLen);
    }
  }

  return 0;
}
