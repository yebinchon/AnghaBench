
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int config; int ip; } ;
struct TYPE_6__ {int thandle; int privateIp; } ;
typedef TYPE_1__ SDnodeObj ;
typedef TYPE_2__ SCfgMsg ;


 int TSDB_CODE_NODE_OFFLINE ;
 int TSDB_CODE_NOT_CONFIGURED ;
 int TSDB_MSG_TYPE_CFG_PNODE ;
 int inet_addr (int ) ;
 int mError (char*,int ) ;
 int mTrace (char*,int ,int ) ;
 int memcpy (char*,char*,int) ;
 int mgmtCfgDynamicOptions (TYPE_1__*,int ) ;
 TYPE_1__* mgmtGetDnode (int ) ;
 char* taosBuildReqMsg (int ,int ) ;
 int taosIpStr (int ) ;
 int taosSendMsgToDnode (TYPE_1__*,char*,int) ;

int mgmtSendCfgDnodeMsg(char *cont) {
  char * pMsg, *pStart;
  int msgLen = 0;
  SDnodeObj *pDnode;
  SCfgMsg * pCfg = (SCfgMsg *)cont;
  uint32_t ip;

  ip = inet_addr(pCfg->ip);
  pDnode = mgmtGetDnode(ip);
  if (pDnode == ((void*)0)) {
    mError("dnode ip:%s not configured", pCfg->ip);
    return TSDB_CODE_NOT_CONFIGURED;
  }

  mTrace("dnode:%s, dynamic option received, content:%s", taosIpStr(pDnode->privateIp), pCfg->config);
  int code = mgmtCfgDynamicOptions(pDnode, pCfg->config);
  if (code != -1) {
    return code;
  }

  pStart = taosBuildReqMsg(pDnode->thandle, TSDB_MSG_TYPE_CFG_PNODE);
  if (pStart == ((void*)0)) return TSDB_CODE_NODE_OFFLINE;
  pMsg = pStart;

  memcpy(pMsg, cont, sizeof(SCfgMsg));
  pMsg += sizeof(SCfgMsg);

  msgLen = pMsg - pStart;
  taosSendMsgToDnode(pDnode, pStart, msgLen);

  return 0;
}
