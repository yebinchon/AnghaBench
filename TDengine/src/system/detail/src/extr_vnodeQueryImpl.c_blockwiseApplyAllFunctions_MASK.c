#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_19__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
typedef  size_t int32_t ;
struct TYPE_26__ {size_t numOfNullPoints; int /*<<< orphan*/  member_0; } ;
struct TYPE_25__ {size_t numOfOutputCols; TYPE_2__* pSelectExpr; int /*<<< orphan*/  precision; int /*<<< orphan*/  intervalTimeUnit; int /*<<< orphan*/  nAggTimeInterval; int /*<<< orphan*/  ekey; int /*<<< orphan*/  skey; } ;
struct TYPE_24__ {int /*<<< orphan*/  scanFlag; int /*<<< orphan*/  blockStatus; TYPE_4__* pQuery; int /*<<< orphan*/ * pCtx; } ;
struct TYPE_22__ {size_t functionId; } ;
struct TYPE_23__ {TYPE_1__ pBase; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* xFunction ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  TSKEY ;
typedef  TYPE_3__ SQueryRuntimeEnv ;
typedef  TYPE_4__ SQuery ;
typedef  int /*<<< orphan*/  SQLFunctionCtx ;
typedef  TYPE_5__ SField ;
typedef  int /*<<< orphan*/  SBlockInfo ;
typedef  int /*<<< orphan*/  SArithmeticSupport ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 TYPE_19__* aAggs ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,size_t) ; 
 char* FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ *,size_t,size_t,int) ; 
 TYPE_5__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_5__*,size_t) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_4__*,size_t,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,char*,char*,size_t,size_t,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static int32_t FUNC12(SQueryRuntimeEnv *pRuntimeEnv, int32_t forwardStep, TSKEY *primaryKeyCol,
                                          char *data, SField *pFields, SBlockInfo *pBlockInfo, bool isDiskFileBlock) {
  SQLFunctionCtx *pCtx = pRuntimeEnv->pCtx;
  SQuery *        pQuery = pRuntimeEnv->pQuery;

  int64_t prevNumOfRes = FUNC5(pRuntimeEnv);

  SArithmeticSupport *sasArray = FUNC1((size_t)pQuery->numOfOutputCols, sizeof(SArithmeticSupport));

  for (int32_t k = 0; k < pQuery->numOfOutputCols; ++k) {
    int32_t functionId = pQuery->pSelectExpr[k].pBase.functionId;
//    if (!functionNeedToExecute(pRuntimeEnv, &pCtx[k], functionId)) {
//      continue;
//    }

    SField dummyField = {0};

    bool  hasNull = FUNC6(pQuery, k, pBlockInfo, pFields, isDiskFileBlock);
    char *dataBlock = FUNC3(pRuntimeEnv, data, &sasArray[k], k, forwardStep, isDiskFileBlock);

    SField *tpField = NULL;

    if (pFields != NULL) {
      tpField = FUNC4(pQuery, pBlockInfo, pFields, k);
      /*
       * Field info not exist, the required column is not present in current block,
       * so all data must be null value in current block.
       */
      if (tpField == NULL) {
        tpField = &dummyField;
        tpField->numOfNullPoints = (int32_t)forwardStep;
      }
    }

    TSKEY ts = FUNC0(pQuery) ? pQuery->skey : pQuery->ekey;

    int64_t alignedTimestamp = FUNC9(ts, pQuery->nAggTimeInterval, pQuery->intervalTimeUnit,
                                                             pQuery->precision);
    FUNC7(pQuery, &pCtx[k], alignedTimestamp, dataBlock, (char *)primaryKeyCol, forwardStep, functionId,
                  tpField, hasNull, pRuntimeEnv->blockStatus, &sasArray[k], pRuntimeEnv->scanFlag);
  }

  /*
   * the sqlfunctionCtx parameters should be set done before all functions are invoked,
   * since the selectivity + tag_prj query needs all parameters been set done.
   * tag_prj function are changed to be TSDB_FUNC_TAG_DUMMY
   */
  for (int32_t k = 0; k < pQuery->numOfOutputCols; ++k) {
    int32_t functionId = pQuery->pSelectExpr[k].pBase.functionId;
    if (FUNC2(pRuntimeEnv, &pCtx[k], functionId)) {
      aAggs[functionId].xFunction(&pCtx[k]);
    }
  }

  int64_t numOfIncrementRes = FUNC5(pRuntimeEnv) - prevNumOfRes;
  FUNC11(pRuntimeEnv, numOfIncrementRes);

  FUNC10(sasArray);

  return (int32_t)numOfIncrementRes;
}