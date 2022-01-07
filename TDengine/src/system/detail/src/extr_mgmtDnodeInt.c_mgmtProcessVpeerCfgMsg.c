
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* int32_t ;
struct TYPE_13__ {int numOfVnodes; TYPE_1__* vload; int privateIp; } ;
struct TYPE_12__ {int vgId; } ;
struct TYPE_11__ {int vnode; } ;
struct TYPE_10__ {int vgId; } ;
typedef TYPE_2__ SVpeerCfgMsg ;
typedef TYPE_3__ SVgObj ;
typedef TYPE_4__ SDnodeObj ;


 char TSDB_CODE_INVALID_VALUE ;
 int TSDB_MSG_TYPE_VPEER_CFG_RSP ;
 void* htonl (int) ;
 int mTrace (char*,int ,int,int ,...) ;
 char* mgmtBuildVpeersIe (char*,TYPE_3__*,int) ;
 TYPE_3__* mgmtGetVgroup (int ) ;
 char* taosBuildRspMsgToDnode (TYPE_4__*,int ) ;
 int taosIpStr (int ) ;
 int taosSendMsgToDnode (TYPE_4__*,char*,int) ;

int mgmtProcessVpeerCfgMsg(char *cont, int contLen, SDnodeObj *pObj) {
  char * pMsg, *pStart;
  int msgLen = 0;
  SVpeerCfgMsg *pCfg = (SVpeerCfgMsg *)cont;
  SVgObj * pVgroup = ((void*)0);

  int vnode = htonl(pCfg->vnode);

  pStart = taosBuildRspMsgToDnode(pObj, TSDB_MSG_TYPE_VPEER_CFG_RSP);
  if (pStart == ((void*)0)) return 0;
  pMsg = pStart;

  if (vnode < pObj->numOfVnodes) pVgroup = mgmtGetVgroup(pObj->vload[vnode].vgId);

  if (pVgroup) {
    *pMsg = 0;
    pMsg++;
    pMsg = mgmtBuildVpeersIe(pMsg, pVgroup, vnode);
    mTrace("dnode:%s, vnode:%d, vgroup:%d, send create meter msg, code:%d", taosIpStr(pObj->privateIp), vnode, pVgroup->vgId, *pMsg);
  } else {
    mTrace("dnode:%s, vnode:%d, no vgroup info, vgroup:%d", taosIpStr(pObj->privateIp), vnode, pObj->vload[vnode].vgId);
    *pMsg = TSDB_CODE_INVALID_VALUE;
    pMsg++;
    *(int32_t *)pMsg = htonl(vnode);
    pMsg += sizeof(int32_t);
  }

  msgLen = pMsg - pStart;
  taosSendMsgToDnode(pObj, pStart, msgLen);

  return 0;
}
