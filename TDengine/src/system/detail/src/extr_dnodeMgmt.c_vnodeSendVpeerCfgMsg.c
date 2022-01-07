
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vnode; } ;
typedef TYPE_1__ SVpeerCfgMsg ;
typedef int SMgmtObj ;


 int TSDB_MSG_TYPE_VPEER_CFG ;
 int htonl (int) ;
 int mgmtObj ;
 char* taosBuildReqMsgToMnode (int *,int ) ;
 int taosSendMsgToMnode (int *,char*,int) ;

void vnodeSendVpeerCfgMsg(int vnode) {
  char * pMsg, *pStart;
  int msgLen;
  SVpeerCfgMsg *pCfg;
  SMgmtObj * pObj = &mgmtObj;

  pStart = taosBuildReqMsgToMnode(pObj, TSDB_MSG_TYPE_VPEER_CFG);
  if (pStart == ((void*)0)) return;
  pMsg = pStart;

  pCfg = (SVpeerCfgMsg *)pMsg;
  pCfg->vnode = htonl(vnode);
  pMsg += sizeof(SVpeerCfgMsg);

  msgLen = pMsg - pStart;
  taosSendMsgToMnode(pObj, pStart, msgLen);
}
