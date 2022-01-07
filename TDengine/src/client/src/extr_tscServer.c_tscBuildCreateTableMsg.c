
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_22__ {int igExists; void* sqlLen; TYPE_4__* schema; void* numOfTags; void* numOfColumns; int meterId; } ;
struct TYPE_21__ {int name; } ;
struct TYPE_20__ {int db; } ;
struct TYPE_19__ {void* bytes; int name; int type; } ;
struct TYPE_18__ {short allocSize; char* payload; short numOfCols; short count; int payloadLen; int msgType; int fieldsInfo; scalar_t__ existsCheck; } ;
struct TYPE_17__ {TYPE_3__ cmd; } ;
struct TYPE_16__ {short bytes; int name; int type; } ;
typedef TYPE_1__ TAOS_FIELD ;
typedef int STagData ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SSchema ;
typedef TYPE_5__ SMgmtHead ;
typedef TYPE_6__ SMeterMetaInfo ;
typedef TYPE_7__ SCreateTableMsg ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_MSG_TYPE_CREATE_TABLE ;
 int assert (int) ;
 char* calloc (int,short) ;
 void* htons (short) ;
 int memcpy (char*,char*,short) ;
 int minMsgSize () ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (char*) ;
 int tfree (char*) ;
 int tsRpcHeadSize ;
 scalar_t__ tscAllocPayload (TYPE_3__*,int) ;
 int tscClearFieldInfo (int *) ;
 int tscError (char*,TYPE_2__*) ;
 int tscEstimateCreateTableMsgLength (TYPE_2__*) ;
 TYPE_1__* tscFieldInfoGetField (TYPE_3__*,int) ;
 int tscGetDBInfoFromMeterId (int ,int ) ;
 TYPE_6__* tscGetMeterMetaInfo (TYPE_3__*,int ) ;

int tscBuildCreateTableMsg(SSqlObj *pSql) {
  SCreateTableMsg *pCreateTableMsg;
  char * pMsg, *pStart;
  int msgLen = 0;
  SSchema * pSchema;
  int size = 0;




  char *tmpData = calloc(1, pSql->cmd.allocSize);


  memcpy(tmpData, pSql->cmd.payload, pSql->cmd.allocSize);

  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);


  size = tscEstimateCreateTableMsgLength(pSql);
  if (TSDB_CODE_SUCCESS != tscAllocPayload(pCmd, size)) {
    tscError("%p failed to malloc for create table msg", pSql);
    return -1;
  }

  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;

  tscGetDBInfoFromMeterId(pMeterMetaInfo->name, pMgmt->db);

  pMsg += sizeof(SMgmtHead);

  pCreateTableMsg = (SCreateTableMsg *)pMsg;
  strcpy(pCreateTableMsg->meterId, pMeterMetaInfo->name);

  pCreateTableMsg->igExists = pCmd->existsCheck ? 1 : 0;
  pCreateTableMsg->numOfColumns = htons(pCmd->numOfCols);
  pCreateTableMsg->numOfTags = htons(pCmd->count);
  pMsg = (char *)pCreateTableMsg->schema;

  pCreateTableMsg->sqlLen = 0;
  short sqlLen = (short)(strlen(tmpData) + 1);

  if (pCmd->numOfCols == 0 && pCmd->count == 0) {

    memcpy(pMsg, tmpData, sizeof(STagData));
    pMsg += sizeof(STagData);
  } else {

    pSchema = pCreateTableMsg->schema;
    for (int i = 0; i < pCmd->numOfCols + pCmd->count; ++i) {
      TAOS_FIELD *pField = tscFieldInfoGetField(pCmd, i);

      pSchema->type = pField->type;
      strcpy(pSchema->name, pField->name);
      pSchema->bytes = htons(pField->bytes);
      pSchema++;
    }

    pMsg = (char *)pSchema;


    if (sqlLen > 1) {
      memcpy(pMsg, tmpData, sqlLen);
      pMsg[sqlLen - 1] = 0;

      pCreateTableMsg->sqlLen = htons(sqlLen);
      pMsg += sqlLen;
    }
  }

  tfree(tmpData);
  tscClearFieldInfo(&pCmd->fieldsInfo);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_CREATE_TABLE;

  assert(msgLen + minMsgSize() <= size);
  return msgLen;
}
