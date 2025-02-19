
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int queryId; scalar_t__ handle; } ;
struct TYPE_10__ {int db; } ;
struct TYPE_9__ {char* payload; int payloadLen; int msgType; } ;
struct TYPE_8__ {TYPE_1__* pTscObj; TYPE_3__ cmd; } ;
struct TYPE_7__ {char* db; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SMgmtHead ;
typedef TYPE_5__ SKillQuery ;


 int TSDB_MSG_TYPE_KILL_QUERY ;
 int strcpy (int ,char*) ;
 int tsRpcHeadSize ;

int tscBuildKillQueryMsg(SSqlObj *pSql) {
  SKillQuery *pKill;
  char * pMsg, *pStart;
  int msgLen = 0;

  SSqlCmd *pCmd = &pSql->cmd;
  STscObj *pObj = pSql->pTscObj;
  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  strcpy(pMgmt->db, pObj->db);
  pMsg += sizeof(SMgmtHead);

  pKill = (SKillQuery *)pMsg;
  pKill->handle = 0;
  strcpy(pKill->queryId, pCmd->payload);

  pMsg += sizeof(SKillQuery);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_KILL_QUERY;

  return msgLen;
}
