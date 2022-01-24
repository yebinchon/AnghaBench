#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int queryRangeSet; scalar_t__ lastResRows; } ;
struct TYPE_13__ {TYPE_2__* pQuery; } ;
struct TYPE_15__ {int /*<<< orphan*/  rawEKey; int /*<<< orphan*/  rawSKey; TYPE_1__ runtimeEnv; } ;
struct TYPE_14__ {scalar_t__ lastKey; scalar_t__ skey; scalar_t__ ekey; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_1__ SQueryRuntimeEnv ;
typedef  TYPE_2__ SQuery ;
typedef  TYPE_3__ SMeterQuerySupportObj ;
typedef  TYPE_4__ SMeterQueryInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,scalar_t__) ; 

void FUNC5(SMeterQueryInfo *pMeterQueryInfo, SMeterQuerySupportObj *pSupporter, TSKEY key) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery *          pQuery = pRuntimeEnv->pQuery;

  if (pMeterQueryInfo->queryRangeSet) {
    FUNC1((FUNC0(pQuery) && pQuery->lastKey >= pQuery->skey) ||
           (!FUNC0(pQuery) && pQuery->lastKey <= pQuery->skey));

    if ((pQuery->ekey < key && FUNC0(pQuery)) || (pQuery->ekey > key && !FUNC0(pQuery))) {
      /*
       * last query on this block of the meter is done, start next interval on this block
       * otherwise, keep the previous query range and proceed
       */
      FUNC2(pQuery, key, pSupporter->rawSKey, pSupporter->rawEKey);
      FUNC3(pRuntimeEnv, pMeterQueryInfo);

      // previous query does not be closed, save the results and close it
      if (pMeterQueryInfo->lastResRows > 0) {
        FUNC4(pSupporter, pMeterQueryInfo, pMeterQueryInfo->lastResRows);
      }
    } else {
      /* current query not completed, continue. do nothing with respect to query range, */
    }
  } else {
    pQuery->skey = key;
    FUNC1(pMeterQueryInfo->lastResRows == 0);

    if ((FUNC0(pQuery) && (pQuery->ekey < pQuery->skey)) ||
        (!FUNC0(pQuery) && (pQuery->skey < pQuery->ekey))) {
      // for too small query range, no data in this interval.
      return;
    }

    FUNC2(pQuery, pQuery->skey, pSupporter->rawSKey, pSupporter->rawEKey);
    FUNC3(pRuntimeEnv, pMeterQueryInfo);
    pMeterQueryInfo->queryRangeSet = 1;
  }
}