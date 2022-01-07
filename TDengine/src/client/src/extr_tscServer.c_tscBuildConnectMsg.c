
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int db; } ;
struct TYPE_8__ {char* payload; int payloadLen; int msgType; } ;
struct TYPE_7__ {TYPE_1__* pTscObj; TYPE_3__ cmd; } ;
struct TYPE_6__ {char* db; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SConnectMsg ;


 int TSDB_MSG_TYPE_CONNECT ;
 int TS_PATH_DELIMITER ;
 int strcpy (int ,char*) ;
 char* strstr (char*,int ) ;
 int tsRpcHeadSize ;

int tscBuildConnectMsg(SSqlObj *pSql) {
  SConnectMsg *pConnect;
  char * pMsg, *pStart;
  int msgLen = 0;

  SSqlCmd *pCmd = &pSql->cmd;
  STscObj *pObj = pSql->pTscObj;
  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  pConnect = (SConnectMsg *)pMsg;

  char *db;
  db = strstr(pObj->db, TS_PATH_DELIMITER);
  db = (db == ((void*)0)) ? pObj->db : db + 1;
  strcpy(pConnect->db, db);

  pMsg += sizeof(SConnectMsg);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_CONNECT;

  return msgLen;
}
