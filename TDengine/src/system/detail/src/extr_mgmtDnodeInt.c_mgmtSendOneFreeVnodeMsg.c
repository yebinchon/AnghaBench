
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * thandle; } ;
struct TYPE_9__ {int vnode; } ;
struct TYPE_8__ {int vnode; int ip; } ;
typedef TYPE_1__ SVnodeGid ;
typedef TYPE_2__ SFreeVnodeMsg ;
typedef TYPE_3__ SDnodeObj ;


 int TSDB_MSG_TYPE_FREE_VNODE ;
 int htons (int ) ;
 int mError (char*,int ) ;
 int mTrace (char*,int ) ;
 TYPE_3__* mgmtGetDnode (int ) ;
 char* taosBuildReqMsgToDnode (TYPE_3__*,int ) ;
 int taosIpStr (int ) ;
 int taosSendMsgToDnode (TYPE_3__*,char*,int) ;

int mgmtSendOneFreeVnodeMsg(SVnodeGid *pVnodeGid) {
  SFreeVnodeMsg *pFreeVnode;
  char * pMsg, *pStart;
  int msgLen = 0;
  SDnodeObj * pDnode;

  pDnode = mgmtGetDnode(pVnodeGid->ip);
  if (pDnode == ((void*)0)) {
    mError("dnode:%s not there", taosIpStr(pVnodeGid->ip));
    return -1;
  }

  if (pDnode->thandle == ((void*)0)) {
    mTrace("dnode:%s offline, failed to send Vpeer msg", taosIpStr(pVnodeGid->ip));
    return -1;
  }

  pStart = taosBuildReqMsgToDnode(pDnode, TSDB_MSG_TYPE_FREE_VNODE);
  if (pStart == ((void*)0)) return -1;
  pMsg = pStart;

  pFreeVnode = (SFreeVnodeMsg *)pMsg;
  pFreeVnode->vnode = htons(pVnodeGid->vnode);

  pMsg += sizeof(SFreeVnodeMsg);

  msgLen = pMsg - pStart;
  taosSendMsgToDnode(pDnode, pStart, msgLen);

  return 0;
}
