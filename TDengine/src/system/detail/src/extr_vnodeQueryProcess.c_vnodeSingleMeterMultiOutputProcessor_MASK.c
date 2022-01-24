#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; int /*<<< orphan*/  vnode; } ;
struct TYPE_20__ {scalar_t__ offset; } ;
struct TYPE_22__ {scalar_t__ pointsRead; scalar_t__ numOfFilterCols; scalar_t__ pointsOffset; scalar_t__ pointsToRead; int /*<<< orphan*/  ekey; int /*<<< orphan*/  lastKey; int /*<<< orphan*/  over; TYPE_2__ limit; } ;
struct TYPE_23__ {int /*<<< orphan*/  pointsReturned; int /*<<< orphan*/  pointsRead; TYPE_1__* pMeterQuerySupporter; TYPE_6__* pObj; TYPE_4__ query; } ;
struct TYPE_21__ {int /*<<< orphan*/  nextPos; } ;
struct TYPE_19__ {TYPE_3__ runtimeEnv; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_3__ SQueryRuntimeEnv ;
typedef  TYPE_4__ SQuery ;
typedef  TYPE_5__ SQInfo ;
typedef  TYPE_6__ SMeterObj ;

/* Variables and functions */
 int QUERY_COMPLETED ; 
 int QUERY_NO_DATA_TO_CHECK ; 
 int QUERY_RESBUF_FULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC13(SQInfo *pQInfo) {
  SQuery *   pQuery = &pQInfo->query;
  SMeterObj *pMeterObj = pQInfo->pObj;

  SQueryRuntimeEnv *pRuntimeEnv = &pQInfo->pMeterQuerySupporter->runtimeEnv;

  // for ts_comp query, re-initialized is not allowed
  if (!FUNC8(pQuery)) {
    FUNC11(pRuntimeEnv);
  }

  while (1) {
    FUNC12(pRuntimeEnv);
    FUNC3(pRuntimeEnv);

    if (FUNC7(pQuery)) {
      return;
    }

    pQuery->pointsRead = FUNC6(pRuntimeEnv);
    if (pQuery->limit.offset > 0 && pQuery->numOfFilterCols > 0 && pQuery->pointsRead > 0) {
      FUNC5(pRuntimeEnv);
    }

    /*
     * 1. if pQuery->pointsRead == 0, pQuery->limit.offset >= 0, still need to check data
     * 2. if pQuery->pointsRead > 0, pQuery->limit.offset must be 0
     */
    if (pQuery->pointsRead > 0 || FUNC0(pQuery->over, QUERY_COMPLETED | QUERY_NO_DATA_TO_CHECK)) {
      break;
    }

    TSKEY nextTimestamp = FUNC9(pRuntimeEnv, &pRuntimeEnv->nextPos);
    FUNC1(nextTimestamp > 0 || ((nextTimestamp < 0) && FUNC0(pQuery->over, QUERY_NO_DATA_TO_CHECK)));

    FUNC2("QInfo:%p vid:%d sid:%d id:%s, skip current result, offset:%lld, next qrange:%lld-%lld", pQInfo,
           pMeterObj->vnode, pMeterObj->sid, pMeterObj->meterId, pQuery->limit.offset, pQuery->lastKey, pQuery->ekey);

    FUNC11(pRuntimeEnv);
  }

  FUNC4(pQInfo);
  FUNC10(pRuntimeEnv);

  pQInfo->pointsRead += pQuery->pointsRead;

  if (FUNC0(pQuery->over, QUERY_RESBUF_FULL)) {
    TSKEY nextTimestamp = FUNC9(pRuntimeEnv, &pRuntimeEnv->nextPos);
    FUNC1(nextTimestamp > 0 || ((nextTimestamp < 0) && FUNC0(pQuery->over, QUERY_NO_DATA_TO_CHECK)));

    FUNC2("QInfo:%p vid:%d sid:%d id:%s, query abort due to buffer limitation, next qrange:%lld-%lld", pQInfo,
           pMeterObj->vnode, pMeterObj->sid, pMeterObj->meterId, pQuery->lastKey, pQuery->ekey);
  }

  FUNC2("QInfo:%p vid:%d sid:%d id:%s, %d points returned, totalRead:%d totalReturn:%d", pQInfo, pMeterObj->vnode,
         pMeterObj->sid, pMeterObj->meterId, pQuery->pointsRead, pQInfo->pointsRead, pQInfo->pointsReturned);

  pQuery->pointsOffset = pQuery->pointsToRead;  // restore the available buffer
  if (!FUNC8(pQuery)) {
    FUNC1(pQuery->pointsRead <= pQuery->pointsToRead);
  }
}