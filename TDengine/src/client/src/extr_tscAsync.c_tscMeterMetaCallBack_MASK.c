#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_26__ {int /*<<< orphan*/  name; TYPE_1__* pMeterMeta; } ;
struct TYPE_25__ {scalar_t__ vnodeIdx; TYPE_4__* pParentSqlObj; } ;
struct TYPE_24__ {int type; scalar_t__ vnodeIdx; int /*<<< orphan*/  command; } ;
struct TYPE_22__ {int code; } ;
struct TYPE_23__ {void* fp; int /*<<< orphan*/ * pStream; TYPE_5__ cmd; struct TYPE_23__* signature; int /*<<< orphan*/ * param; int /*<<< orphan*/  rspSem; int /*<<< orphan*/  retry; int /*<<< orphan*/  thandle; TYPE_3__ res; TYPE_2__* pTscObj; } ;
struct TYPE_21__ {int /*<<< orphan*/  db; int /*<<< orphan*/  acctId; } ;
struct TYPE_20__ {scalar_t__ numOfTags; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_2__ STscObj ;
typedef  TYPE_3__ SSqlRes ;
typedef  TYPE_4__ SSqlObj ;
typedef  TYPE_5__ SSqlCmd ;
typedef  TYPE_6__ SRetrieveSupport ;
typedef  TYPE_7__ SMeterMetaInfo ;

/* Variables and functions */
 int TSDB_CODE_ACTION_IN_PROGRESS ; 
 int TSDB_CODE_SUCCESS ; 
 int TSDB_QUERY_TYPE_STABLE_SUBQUERY ; 
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,TYPE_4__*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(void *param, TAOS_RES *res, int code) {
  SSqlObj *pSql = (SSqlObj *)param;
  if (pSql == NULL || pSql->signature != pSql) return;

  STscObj *pObj = pSql->pTscObj;
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  if (pSql->fp == NULL) {
    FUNC5("%p callBack is NULL!!!", pSql);
    return;
  }

  if (pSql->fp == (void *)1) {
    pSql->fp = NULL;

    if (code != 0) {
      code = FUNC1(code);
      pRes->code = code;
      FUNC13("%p failed to renew meterMeta", pSql);
      FUNC14(&pSql->rspSem);
    } else {
      FUNC13("%p renew meterMeta successfully, command:%d, code:%d, thandle:%p, retry:%d",
          pSql, pSql->cmd.command, pSql->res.code, pSql->thandle, pSql->retry);

      FUNC2(FUNC7(&pSql->cmd, 0)->pMeterMeta == NULL);
      FUNC6(pSql, FUNC7(&pSql->cmd, 0)->name, 0);

      code = FUNC11(pSql);
      if (code != 0) {
        pRes->code = code;
        FUNC14(&pSql->rspSem);
      }
    }

    return;
  }

  if (code != 0) {
    pRes->code = (uint8_t)FUNC1(code);
    FUNC10(pSql);
    return;
  }

  if (pSql->pStream == NULL) {
    // check if it is a sub-query of metric query first, if true, enter another routine
    if ((pSql->cmd.type & TSDB_QUERY_TYPE_STABLE_SUBQUERY) == TSDB_QUERY_TYPE_STABLE_SUBQUERY) {
      SMeterMetaInfo* pMeterMetaInfo = FUNC7(pCmd, 0);
      FUNC2(pMeterMetaInfo->pMeterMeta->numOfTags != 0 && pCmd->vnodeIdx >= 0 && pSql->param != NULL);

      SRetrieveSupport *trs = (SRetrieveSupport *)pSql->param;
      SSqlObj *         pParObj = trs->pParentSqlObj;
      FUNC2(pParObj->signature == pParObj && trs->vnodeIdx == pCmd->vnodeIdx &&
          pMeterMetaInfo->pMeterMeta->numOfTags != 0);

      FUNC13("%p get metricMeta during metric query successfully", pSql);

      code = FUNC6(pSql, FUNC7(&pSql->cmd, 0)->name, 0);
      pRes->code = code;

      if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;

      code = FUNC8(pSql);
      pRes->code = code;

      if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;
    } else {  // normal async query continues
      code = FUNC3(pSql, pObj->acctId, pObj->db, false);
      if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;
    }

  } else {  // stream computing
    SMeterMetaInfo *pMeterMetaInfo = FUNC7(pCmd, 0);
    code = FUNC6(pSql, pMeterMetaInfo->name, 0);
    pRes->code = code;

    if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;

    pMeterMetaInfo = FUNC7(pCmd, 0);
    if (code == TSDB_CODE_SUCCESS && FUNC0(pMeterMetaInfo)) {
      code = FUNC8(pSql);
      pRes->code = code;

      if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;
    }
  }

  if (code != 0) {
    FUNC10(pSql);
    return;
  }

  if (pSql->pStream) {
    FUNC13("%p stream:%p meta is updated, start new query, command:%d", pSql, pSql->pStream, pSql->cmd.command);
    /*
     * NOTE:
     * transfer the sql function for metric query before get meter/metric meta,
     * since in callback functions, only tscProcessSql(pStream->pSql) is executed!
     */
    FUNC12(&pSql->cmd);
    FUNC9(pSql->pStream);
  } else {
    FUNC13("%p get meterMeta/metricMeta successfully", pSql);
  }

  FUNC4(pSql);
}