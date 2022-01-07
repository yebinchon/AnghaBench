
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {int db; } ;
struct TYPE_13__ {char* payload; int payloadLen; int msgType; int type; } ;
struct TYPE_10__ {int qhandle; } ;
struct TYPE_12__ {TYPE_1__ res; TYPE_2__* pTscObj; TYPE_4__ cmd; } ;
struct TYPE_11__ {int db; } ;
typedef TYPE_2__ STscObj ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SMgmtHead ;
typedef TYPE_6__ SMeterMetaInfo ;


 int TSDB_MSG_TYPE_RETRIEVE ;
 char htons (int ) ;
 int strcpy (int ,int ) ;
 size_t strlen (int ) ;
 int tsRpcHeadSize ;
 TYPE_6__* tscGetMeterMetaInfo (TYPE_4__*,int ) ;

int tscBuildRetrieveFromMgmtMsg(SSqlObj *pSql) {
  char *pMsg, *pStart;
  int msgLen = 0;

  SSqlCmd *pCmd = &pSql->cmd;
  STscObj *pObj = pSql->pTscObj;
  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;

  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  size_t nameLen = strlen(pMeterMetaInfo->name);

  if (nameLen > 0) {
    strcpy(pMgmt->db, pMeterMetaInfo->name);
  } else {
    strcpy(pMgmt->db, pObj->db);
  }

  pMsg += sizeof(SMgmtHead);

  *((uint64_t *)pMsg) = pSql->res.qhandle;
  pMsg += sizeof(pSql->res.qhandle);

  *pMsg = htons(pCmd->type);
  pMsg += sizeof(pCmd->type);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_RETRIEVE;

  return msgLen;
}
