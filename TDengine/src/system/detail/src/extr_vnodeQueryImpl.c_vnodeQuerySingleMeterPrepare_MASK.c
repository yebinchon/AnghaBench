#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_59__   TYPE_9__ ;
typedef  struct TYPE_58__   TYPE_8__ ;
typedef  struct TYPE_57__   TYPE_7__ ;
typedef  struct TYPE_56__   TYPE_6__ ;
typedef  struct TYPE_55__   TYPE_5__ ;
typedef  struct TYPE_54__   TYPE_4__ ;
typedef  struct TYPE_53__   TYPE_3__ ;
typedef  struct TYPE_52__   TYPE_2__ ;
typedef  struct TYPE_51__   TYPE_1__ ;
typedef  struct TYPE_50__   TYPE_19__ ;
typedef  struct TYPE_49__   TYPE_17__ ;
typedef  struct TYPE_48__   TYPE_12__ ;
typedef  struct TYPE_47__   TYPE_11__ ;
typedef  struct TYPE_46__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_57__ {scalar_t__ order; } ;
struct TYPE_52__ {scalar_t__ offset; } ;
struct TYPE_58__ {scalar_t__ skey; scalar_t__ ekey; scalar_t__ lastKey; scalar_t__ pos; scalar_t__ slot; TYPE_7__ order; int /*<<< orphan*/  precision; int /*<<< orphan*/  intervalTimeUnit; int /*<<< orphan*/  nAggTimeInterval; TYPE_6__* pSelectExpr; TYPE_2__ limit; int /*<<< orphan*/  pGroupbyExpr; scalar_t__ pointsRead; } ;
struct TYPE_59__ {int over; int /*<<< orphan*/  dataReady; scalar_t__ pointsRead; TYPE_8__ query; } ;
struct TYPE_55__ {TYPE_4__* arg; } ;
struct TYPE_56__ {TYPE_5__ pBase; } ;
struct TYPE_53__ {scalar_t__ i64; } ;
struct TYPE_54__ {TYPE_3__ argValue; } ;
struct TYPE_51__ {int vnodeIndex; } ;
struct TYPE_50__ {scalar_t__ tsOrder; } ;
struct TYPE_49__ {int /*<<< orphan*/  interpoInfo; int /*<<< orphan*/  pResult; scalar_t__ usedIndex; int /*<<< orphan*/  hashList; TYPE_19__* pTSBuf; TYPE_1__ cur; TYPE_8__* pQuery; int /*<<< orphan*/  loadCompBlockInfo; int /*<<< orphan*/  loadBlockInfo; } ;
struct TYPE_48__ {scalar_t__ lastKey; int /*<<< orphan*/  vnode; } ;
struct TYPE_47__ {scalar_t__ rawSKey; scalar_t__ rawEKey; int numOfMeters; TYPE_17__ runtimeEnv; int /*<<< orphan*/  pResult; } ;
struct TYPE_46__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_8__ SQuery ;
typedef  TYPE_9__ SQInfo ;
typedef  TYPE_10__ SPointInterpoSupporter ;
typedef  TYPE_11__ SMeterQuerySupportObj ;
typedef  TYPE_12__ SMeterObj ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  QUERY_NOT_COMPLETED ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSQL_SO_ASC ; 
 int /*<<< orphan*/  TSQL_SO_DESC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,TYPE_8__*,TYPE_12__*) ; 
 scalar_t__ FUNC2 (TYPE_11__*,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_9__*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,TYPE_11__*,int,int) ; 
 scalar_t__ FUNC7 (TYPE_8__*) ; 
 scalar_t__ FUNC8 (TYPE_8__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*) ; 
 scalar_t__ FUNC11 (TYPE_8__*) ; 
 int FUNC12 (int,int,TYPE_11__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_9__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_8__*) ; 
 scalar_t__ FUNC19 (TYPE_12__*,TYPE_8__*,TYPE_17__*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taosHashInt ; 
 int /*<<< orphan*/  FUNC21 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_19__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_17__*,TYPE_12__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_9__*,int /*<<< orphan*/ ) ; 

int32_t FUNC28(SQInfo *pQInfo, SMeterObj *pMeterObj, SMeterQuerySupportObj *pSupporter,
                                     void *param) {
  SQuery *pQuery = &pQInfo->query;

  if ((FUNC0(pQuery) && (pQuery->skey > pQuery->ekey)) ||
      (!FUNC0(pQuery) && (pQuery->ekey > pQuery->skey))) {
    FUNC5("QInfo:%p no result in time range %lld-%lld, order %d", pQInfo, pQuery->skey, pQuery->ekey,
           pQuery->order.order);

    FUNC16(&pQInfo->dataReady);
    pQInfo->over = 1;

    return TSDB_CODE_SUCCESS;
  }

  FUNC18(pQuery);
  FUNC4(pQuery, false);

  pQInfo->over = 0;
  pQInfo->pointsRead = 0;
  pQuery->pointsRead = 0;

  // dataInCache requires lastKey value
  pQuery->lastKey = pQuery->skey;

  FUNC25(&pSupporter->runtimeEnv.loadBlockInfo);
  FUNC26(&pSupporter->runtimeEnv.loadCompBlockInfo);

  // check data in file or cache
  bool dataInCache = true;
  bool dataInDisk = true;
  pSupporter->runtimeEnv.pQuery = pQuery;

  FUNC24(&pSupporter->runtimeEnv, pMeterObj, &dataInDisk, &dataInCache);

  /* data in file or cache is not qualified for the query. abort */
  if (!(dataInCache || dataInDisk)) {
    FUNC5("QInfo:%p no result in query", pQInfo);
    FUNC16(&pQInfo->dataReady);
    pQInfo->over = 1;

    return TSDB_CODE_SUCCESS;
  }

  pSupporter->runtimeEnv.pTSBuf = param;
  pSupporter->runtimeEnv.cur.vnodeIndex = -1;
  if (param != NULL) {
    int16_t order = (pQuery->order.order == pSupporter->runtimeEnv.pTSBuf->tsOrder) ? TSQL_SO_ASC : TSQL_SO_DESC;
    FUNC23(pSupporter->runtimeEnv.pTSBuf, order);
  }

  // create runtime environment
  int32_t ret = FUNC19(pMeterObj, pQuery, &pSupporter->runtimeEnv, NULL, pQuery->order.order, false);
  if (ret != TSDB_CODE_SUCCESS) {
    return ret;
  }

  FUNC27(pQInfo, pMeterObj->vnode);

  if (FUNC9(pQuery->pGroupbyExpr)) {
    if ((ret = FUNC2(pSupporter, pQuery, false)) != TSDB_CODE_SUCCESS) {
      return ret;
    }

    pSupporter->runtimeEnv.hashList = FUNC21(10039, sizeof(void *), taosHashInt);
    pSupporter->runtimeEnv.usedIndex = 0;
    pSupporter->runtimeEnv.pResult = pSupporter->pResult;
  }

  // in case of last_row query, we set the query timestamp to pMeterObj->lastKey;
  if (FUNC7(pQuery)) {
    pQuery->skey = pMeterObj->lastKey;
    pQuery->ekey = pMeterObj->lastKey;
    pQuery->lastKey = pQuery->skey;
  }

  pSupporter->rawSKey = pQuery->skey;
  pSupporter->rawEKey = pQuery->ekey;

  /* query on single table */
  pSupporter->numOfMeters = 1;
  FUNC17(pQuery, QUERY_NOT_COMPLETED);

  SPointInterpoSupporter interpInfo = {0};
  FUNC14(pQuery, &interpInfo);

  if ((FUNC12(dataInDisk, dataInCache, pSupporter, &interpInfo) == false) ||
      (FUNC8(pQuery) && !FUNC11(pQuery) && (pQuery->limit.offset > 0)) ||
      (FUNC11(pQuery) && pQuery->limit.offset >= pQuery->pSelectExpr[1].pBase.arg[0].argValue.i64)) {
    FUNC16(&pQInfo->dataReady);
    pQInfo->over = 1;

    FUNC13(&interpInfo);
    return TSDB_CODE_SUCCESS;
  }

  /*
   * here we set the value for before and after the specified time into the
   * parameter for interpolation query
   */
  FUNC15(pQInfo, &interpInfo);
  FUNC13(&interpInfo);

  if (!FUNC6(pQInfo, pSupporter, dataInDisk, dataInCache)) {
    return TSDB_CODE_SUCCESS;
  }

  int64_t rs = FUNC20(pSupporter->rawSKey, pQuery->nAggTimeInterval, pQuery->intervalTimeUnit,
                                             pQuery->precision);
  FUNC22(&pSupporter->runtimeEnv.interpoInfo, pQuery->order.order, rs, 0, 0);
  FUNC1(pSupporter, pQuery, pMeterObj);

  if (!FUNC10(pQuery)) {
    FUNC3(pQuery->pos >= 0 && pQuery->slot >= 0);
  }

  // the pQuery->skey is changed during normalizedFirstQueryRange, so set the newest lastkey value
  pQuery->lastKey = pQuery->skey;
  return TSDB_CODE_SUCCESS;
}