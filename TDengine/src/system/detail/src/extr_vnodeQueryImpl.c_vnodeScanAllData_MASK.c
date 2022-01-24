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
typedef  struct TYPE_19__   TYPE_16__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_26__ {TYPE_3__* resultInfo; } ;
struct TYPE_25__ {size_t numOfOutputCols; scalar_t__ skey; scalar_t__ lastKey; int /*<<< orphan*/  pGroupbyExpr; TYPE_2__* pSelectExpr; int /*<<< orphan*/  pos; int /*<<< orphan*/  slot; int /*<<< orphan*/  fileId; } ;
struct TYPE_24__ {size_t usedIndex; int /*<<< orphan*/ * pCtx; TYPE_7__* pResult; int /*<<< orphan*/  startPos; TYPE_6__* pQuery; } ;
struct TYPE_23__ {int complete; } ;
struct TYPE_22__ {int complete; } ;
struct TYPE_20__ {size_t functionId; } ;
struct TYPE_21__ {TYPE_1__ pBase; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* xNextStep ) (int /*<<< orphan*/ *) ;} ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_4__ SResultInfo ;
typedef  TYPE_5__ SQueryRuntimeEnv ;
typedef  TYPE_6__ SQuery ;
typedef  TYPE_7__ SOutputRes ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  QUERY_NOT_COMPLETED ; 
 int /*<<< orphan*/  QUERY_NO_DATA_TO_CHECK ; 
 TYPE_16__* aAggs ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *pQuery = pRuntimeEnv->pQuery;
  FUNC10(pQuery, QUERY_NOT_COMPLETED);

  /* store the start query position */
  FUNC8(&pRuntimeEnv->startPos, pQuery->fileId, pQuery->slot, pQuery->pos);

  while (1) {
    FUNC3(pRuntimeEnv);

    // applied to agg functions (e.g., stddev)
    bool toContinue = true;

    if (FUNC5(pQuery->pGroupbyExpr)) {
      // for each group result, call the finalize function for each column
      for (int32_t i = 0; i < pRuntimeEnv->usedIndex; ++i) {
        SOutputRes *buf = &pRuntimeEnv->pResult[i];
        FUNC9(pRuntimeEnv, buf);

        for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
          aAggs[pQuery->pSelectExpr[j].pBase.functionId].xNextStep(&pRuntimeEnv->pCtx[j]);
          SResultInfo *pResInfo = FUNC0(&pRuntimeEnv->pCtx[j]);

          toContinue &= (pResInfo->complete);
        }
      }
    } else {
      for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
        aAggs[pQuery->pSelectExpr[j].pBase.functionId].xNextStep(&pRuntimeEnv->pCtx[j]);
        SResultInfo *pResInfo = FUNC0(&pRuntimeEnv->pCtx[j]);

        toContinue &= (pResInfo->complete);
      }
    }

    if (toContinue) {
      break;
    }

    // set the correct start position, and load the corresponding block in buffer if required.
    TSKEY actKey = FUNC7(pRuntimeEnv, &pRuntimeEnv->startPos);
    FUNC2((FUNC1(pQuery) && actKey >= pQuery->skey) ||
           (!FUNC1(pQuery) && actKey <= pQuery->skey));

    FUNC10(pQuery, QUERY_NOT_COMPLETED);
    pQuery->lastKey = pQuery->skey;

    /* check if query is killed or not */
    if (FUNC6(pQuery)) {
      FUNC10(pQuery, QUERY_NO_DATA_TO_CHECK);
      return;
    }
  }

  FUNC4(pRuntimeEnv);

  // reset status code
  if (FUNC5(pQuery->pGroupbyExpr)) {
    for (int32_t i = 0; i < pRuntimeEnv->usedIndex; ++i) {
      SOutputRes *buf = &pRuntimeEnv->pResult[i];
      for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
        buf->resultInfo[j].complete = false;
      }
    }
  } else {
    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      SResultInfo *pResInfo = FUNC0(&pRuntimeEnv->pCtx[i]);
      if (pResInfo != NULL) {
        pResInfo->complete = false;
      }
    }
  }
}