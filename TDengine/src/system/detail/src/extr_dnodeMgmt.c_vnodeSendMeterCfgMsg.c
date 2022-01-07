
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* sid; void* vnode; } ;
typedef int SMgmtObj ;
typedef TYPE_1__ SMeterCfgMsg ;


 int TSDB_MSG_TYPE_METER_CFG ;
 void* htonl (int) ;
 int mgmtObj ;
 char* taosBuildReqMsgToMnode (int *,int ) ;
 int taosSendMsgToMnode (int *,char*,int) ;

int vnodeSendMeterCfgMsg(int vnode, int sid) {
  char * pMsg, *pStart;
  int msgLen;
  SMeterCfgMsg *pCfg;
  SMgmtObj * pObj = &mgmtObj;

  pStart = taosBuildReqMsgToMnode(pObj, TSDB_MSG_TYPE_METER_CFG);
  if (pStart == ((void*)0)) return -1;
  pMsg = pStart;

  pCfg = (SMeterCfgMsg *)pMsg;
  pCfg->vnode = htonl(vnode);
  pCfg->sid = htonl(sid);
  pMsg += sizeof(SMeterCfgMsg);

  msgLen = pMsg - pStart;
  return taosSendMsgToMnode(pObj, pStart, msgLen);
}
