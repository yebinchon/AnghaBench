
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {char* tags; int createFlag; int meterId; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_11__ {int db; } ;
struct TYPE_10__ {int allocSize; char* payload; scalar_t__* defaultVal; int payloadLen; int msgType; } ;
struct TYPE_9__ {TYPE_2__ cmd; } ;
typedef int STagData ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SSqlCmd ;
typedef TYPE_3__ SMgmtHead ;
typedef TYPE_4__ SMeterMetaInfo ;
typedef TYPE_5__ SMeterInfoMsg ;


 int TSDB_MSG_TYPE_METERINFO ;
 int assert (int) ;
 char* calloc (int,int) ;
 int htons (int ) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ minMsgSize () ;
 int strcpy (int ,int ) ;
 int tfree (char*) ;
 int tsRpcHeadSize ;
 int tscGetDBInfoFromMeterId (int ,int ) ;
 TYPE_4__* tscGetMeterMetaInfo (TYPE_2__*,int ) ;

int tscBuildMeterMetaMsg(SSqlObj *pSql) {
  SMeterInfoMsg *pInfoMsg;
  char * pMsg, *pStart;
  int msgLen = 0;

  char *tmpData = 0;
  if (pSql->cmd.allocSize > 0) {
    tmpData = calloc(1, pSql->cmd.allocSize);
    if (((void*)0) == tmpData) return -1;

    memcpy(tmpData, pSql->cmd.payload, pSql->cmd.allocSize);
  }

  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  tscGetDBInfoFromMeterId(pMeterMetaInfo->name, pMgmt->db);

  pMsg += sizeof(SMgmtHead);

  pInfoMsg = (SMeterInfoMsg *)pMsg;
  strcpy(pInfoMsg->meterId, pMeterMetaInfo->name);
  pInfoMsg->createFlag = htons((uint16_t)pCmd->defaultVal[0]);
  pMsg += sizeof(SMeterInfoMsg);

  if (pCmd->defaultVal[0] != 0) {
    memcpy(pInfoMsg->tags, tmpData, sizeof(STagData));
    pMsg += sizeof(STagData);
  }

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_METERINFO;

  tfree(tmpData);

  assert(msgLen + minMsgSize() <= pCmd->allocSize);
  return msgLen;
}
