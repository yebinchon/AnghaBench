
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int igNotExists; int meterId; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_11__ {int db; } ;
struct TYPE_10__ {char* payload; int payloadLen; int msgType; scalar_t__ existsCheck; } ;
struct TYPE_9__ {TYPE_2__ cmd; } ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SSqlCmd ;
typedef TYPE_3__ SMgmtHead ;
typedef TYPE_4__ SMeterMetaInfo ;
typedef TYPE_5__ SDropTableMsg ;


 int TSDB_MSG_TYPE_DROP_TABLE ;
 int strcpy (int ,int ) ;
 int tsRpcHeadSize ;
 int tscGetDBInfoFromMeterId (int ,int ) ;
 TYPE_4__* tscGetMeterMetaInfo (TYPE_2__*,int ) ;

int tscBuildDropTableMsg(SSqlObj *pSql) {
  SDropTableMsg *pDropTableMsg;
  char * pMsg, *pStart;
  int msgLen = 0;

  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  tscGetDBInfoFromMeterId(pMeterMetaInfo->name, pMgmt->db);
  pMsg += sizeof(SMgmtHead);

  pDropTableMsg = (SDropTableMsg *)pMsg;
  strcpy(pDropTableMsg->meterId, pMeterMetaInfo->name);

  pDropTableMsg->igNotExists = pCmd->existsCheck ? 1 : 0;
  pMsg += sizeof(SDropTableMsg);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_DROP_TABLE;

  return msgLen;
}
