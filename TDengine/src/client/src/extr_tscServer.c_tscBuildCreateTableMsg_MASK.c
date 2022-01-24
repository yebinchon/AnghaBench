#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int igExists; void* sqlLen; TYPE_4__* schema; void* numOfTags; void* numOfColumns; int /*<<< orphan*/  meterId; } ;
struct TYPE_21__ {int /*<<< orphan*/  name; } ;
struct TYPE_20__ {int /*<<< orphan*/  db; } ;
struct TYPE_19__ {void* bytes; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct TYPE_18__ {short allocSize; char* payload; short numOfCols; short count; int payloadLen; int /*<<< orphan*/  msgType; int /*<<< orphan*/  fieldsInfo; scalar_t__ existsCheck; } ;
struct TYPE_17__ {TYPE_3__ cmd; } ;
struct TYPE_16__ {short bytes; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ TAOS_FIELD ;
typedef  int /*<<< orphan*/  STagData ;
typedef  TYPE_2__ SSqlObj ;
typedef  TYPE_3__ SSqlCmd ;
typedef  TYPE_4__ SSchema ;
typedef  TYPE_5__ SMgmtHead ;
typedef  TYPE_6__ SMeterMetaInfo ;
typedef  TYPE_7__ SCreateTableMsg ;

/* Variables and functions */
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_CREATE_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int,short) ; 
 void* FUNC2 (short) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,short) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int tsRpcHeadSize ; 
 scalar_t__ FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 
 TYPE_1__* FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int FUNC15(SSqlObj *pSql) {
  SCreateTableMsg *pCreateTableMsg;
  char *           pMsg, *pStart;
  int              msgLen = 0;
  SSchema *        pSchema;
  int              size = 0;

  // tmp variable to
  // 1. save tags data in order to avoid too long tag values overlapped by header
  // 2. save the selection clause, in create table as .. sql string
  char *tmpData = FUNC1(1, pSql->cmd.allocSize);

  // STagData is in binary format, strncpy is not available
  FUNC3(tmpData, pSql->cmd.payload, pSql->cmd.allocSize);

  SSqlCmd *       pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = FUNC14(pCmd, 0);

  // Reallocate the payload size
  size = FUNC11(pSql);
  if (TSDB_CODE_SUCCESS != FUNC8(pCmd, size)) {
    FUNC10("%p failed to malloc for create table msg", pSql);
    return -1;
  }

  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  // use dbinfo from meterid without modifying current db info
  FUNC13(pMeterMetaInfo->name, pMgmt->db);

  pMsg += sizeof(SMgmtHead);

  pCreateTableMsg = (SCreateTableMsg *)pMsg;
  FUNC5(pCreateTableMsg->meterId, pMeterMetaInfo->name);

  pCreateTableMsg->igExists = pCmd->existsCheck ? 1 : 0;
  pCreateTableMsg->numOfColumns = FUNC2(pCmd->numOfCols);
  pCreateTableMsg->numOfTags = FUNC2(pCmd->count);
  pMsg = (char *)pCreateTableMsg->schema;

  pCreateTableMsg->sqlLen = 0;
  short sqlLen = (short)(FUNC6(tmpData) + 1);

  if (pCmd->numOfCols == 0 && pCmd->count == 0) {
    // create by using metric, tags value
    FUNC3(pMsg, tmpData, sizeof(STagData));
    pMsg += sizeof(STagData);
  } else {
    // create metric/create normal meter
    pSchema = pCreateTableMsg->schema;
    for (int i = 0; i < pCmd->numOfCols + pCmd->count; ++i) {
      TAOS_FIELD *pField = FUNC12(pCmd, i);

      pSchema->type = pField->type;
      FUNC5(pSchema->name, pField->name);
      pSchema->bytes = FUNC2(pField->bytes);
      pSchema++;
    }

    pMsg = (char *)pSchema;

    // check if it is a stream sql
    if (sqlLen > 1) {
      FUNC3(pMsg, tmpData, sqlLen);
      pMsg[sqlLen - 1] = 0;

      pCreateTableMsg->sqlLen = FUNC2(sqlLen);
      pMsg += sqlLen;
    }
  }

  FUNC7(tmpData);
  FUNC9(&pCmd->fieldsInfo);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_CREATE_TABLE;

  FUNC0(msgLen + FUNC4() <= size);
  return msgLen;
}