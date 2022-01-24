#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_18__ {int /*<<< orphan*/ * payload; int /*<<< orphan*/ * defaultVal; scalar_t__ allocSize; int /*<<< orphan*/  command; } ;
struct TYPE_17__ {int /*<<< orphan*/ * pMeterMeta; int /*<<< orphan*/  name; } ;
struct TYPE_16__ {int /*<<< orphan*/  sqlstr; struct TYPE_16__* param; int /*<<< orphan*/ * fp; TYPE_7__ cmd; int /*<<< orphan*/  emptyRspSem; int /*<<< orphan*/  rspSem; struct TYPE_16__* signature; int /*<<< orphan*/  pTscObj; } ;
typedef  TYPE_1__ SSqlObj ;
typedef  TYPE_2__ SMeterMetaInfo ;
typedef  int /*<<< orphan*/  SMeterMeta ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_CODE_ACTION_IN_PROGRESS ; 
 int /*<<< orphan*/  TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSDB_DEFAULT_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  TSDB_SQL_META ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tscCacheHandle ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_2__* FUNC10 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tscMeterMetaCallBack ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_1__*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int32_t FUNC14(SSqlObj *pSql, char *meterId, int32_t index) {
  int32_t code = TSDB_CODE_SUCCESS;

  SSqlObj *pNew = FUNC0(1, sizeof(SSqlObj));
  if (NULL == pNew) {
    FUNC8("%p malloc failed for new sqlobj to get meter meta", pSql);
    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }
  pNew->pTscObj = pSql->pTscObj;
  pNew->signature = pNew;
  pNew->cmd.command = TSDB_SQL_META;
  pNew->cmd.payload = NULL;
  pNew->cmd.allocSize = 0;

  pNew->cmd.defaultVal[0] = pSql->cmd.defaultVal[0];  // flag of create table if not exists
  if (TSDB_CODE_SUCCESS != FUNC7(&pNew->cmd, TSDB_DEFAULT_PAYLOAD_SIZE)) {
    FUNC8("%p malloc failed for payload to get meter meta", pSql);
    FUNC1(pNew);
    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }

  SMeterMetaInfo *pMeterMetaInfo = FUNC6(&pNew->cmd);

  FUNC3(pMeterMetaInfo->name, meterId);
  FUNC2(pNew->cmd.payload, pSql->cmd.payload, TSDB_DEFAULT_PAYLOAD_SIZE);
  FUNC12("%p new pSqlObj:%p to get meterMeta", pSql, pNew);

  if (pSql->fp == NULL) {
    FUNC13(&pNew->rspSem, 0, 0);
    FUNC13(&pNew->emptyRspSem, 0, 1);

    code = FUNC11(pNew);
    SMeterMetaInfo *pInfo = FUNC10(&pSql->cmd, index);

    // update cache only on success get metermeta
    if (code == TSDB_CODE_SUCCESS) {
      pInfo->pMeterMeta = (SMeterMeta *)FUNC5(tscCacheHandle, meterId);
    }

    FUNC12("%p get meter meta complete, code:%d, pMeterMeta:%p", pSql, code, pInfo->pMeterMeta);
    FUNC9(pNew);

  } else {
    pNew->fp = tscMeterMetaCallBack;
    pNew->param = pSql;
    pNew->sqlstr = FUNC4(pSql->sqlstr);

    code = FUNC11(pNew);
    if (code == TSDB_CODE_SUCCESS) {
      code = TSDB_CODE_ACTION_IN_PROGRESS;
    }
  }

  return code;
}