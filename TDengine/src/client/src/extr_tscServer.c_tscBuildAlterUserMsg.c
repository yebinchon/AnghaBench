
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {char privilege; int flag; int pass; int user; } ;
struct TYPE_17__ {char* name; } ;
struct TYPE_16__ {int db; } ;
struct TYPE_12__ {int order; } ;
struct TYPE_15__ {char* payload; int payloadLen; int msgType; scalar_t__ count; TYPE_1__ order; } ;
struct TYPE_14__ {TYPE_2__* pTscObj; TYPE_4__ cmd; } ;
struct TYPE_13__ {char* db; } ;
typedef TYPE_2__ STscObj ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SMgmtHead ;
typedef TYPE_6__ SMeterMetaInfo ;
typedef TYPE_7__ SCreateUserMsg ;
typedef TYPE_7__ SAlterUserMsg ;


 int TSDB_MSG_TYPE_ALTER_USER ;
 int strcpy (int ,char*) ;
 int tsRpcHeadSize ;
 TYPE_6__* tscGetMeterMetaInfo (TYPE_4__*,int ) ;

int tscBuildAlterUserMsg(SSqlObj *pSql) {
  SAlterUserMsg *pAlterMsg;
  char * pMsg, *pStart;
  int msgLen = 0;

  SSqlCmd * pCmd = &pSql->cmd;
  STscObj * pObj = pSql->pTscObj;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  strcpy(pMgmt->db, pObj->db);
  pMsg += sizeof(SMgmtHead);

  pAlterMsg = (SCreateUserMsg *)pMsg;
  strcpy(pAlterMsg->user, pMeterMetaInfo->name);
  strcpy(pAlterMsg->pass, pCmd->payload);
  pAlterMsg->flag = pCmd->order.order;
  pAlterMsg->privilege = (char)pCmd->count;

  pMsg += sizeof(SAlterUserMsg);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_ALTER_USER;

  return msgLen;
}
