
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int code; int more; } ;
struct TYPE_4__ {int db; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
typedef TYPE_2__ SVPeersMsg ;
typedef TYPE_3__ STaosRsp ;
typedef int SMgmtObj ;


 int TSDB_DB_NAME_LEN ;
 int TSDB_MSG_TYPE_VPEERS_RSP ;
 int memcpy (int ,int ,int) ;
 char* taosBuildRspMsgToMnode (int *,int ) ;
 int taosSendMsgToMnode (int *,char*,int) ;
 int vnodeProcessVPeerCfg (char*,int,int *) ;

int vnodeProcessVPeersMsg(char *msg, int msgLen, SMgmtObj *pMgmtObj) {
  int code = 0;

  code = vnodeProcessVPeerCfg(msg, msgLen, pMgmtObj);

  char * pStart;
  STaosRsp * pRsp;
  SVPeersMsg *pVPeersMsg = (SVPeersMsg *)msg;

  pStart = taosBuildRspMsgToMnode(pMgmtObj, TSDB_MSG_TYPE_VPEERS_RSP);
  if (pStart == ((void*)0)) return -1;

  pRsp = (STaosRsp *)pStart;
  pRsp->code = code;
  memcpy(pRsp->more, pVPeersMsg->cfg.db, TSDB_DB_NAME_LEN);

  msgLen = sizeof(STaosRsp) + TSDB_DB_NAME_LEN;
  taosSendMsgToMnode(pMgmtObj, pStart, msgLen);

  return code;
}
