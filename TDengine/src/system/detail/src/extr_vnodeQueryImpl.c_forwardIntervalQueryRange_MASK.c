#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_14__ {scalar_t__ rawEKey; int /*<<< orphan*/  rawSKey; } ;
struct TYPE_11__ {int /*<<< orphan*/  order; } ;
struct TYPE_13__ {scalar_t__ ekey; int nAggTimeInterval; scalar_t__ skey; scalar_t__ lastKey; int /*<<< orphan*/  over; TYPE_1__ order; } ;
struct TYPE_12__ {int /*<<< orphan*/  nextPos; TYPE_3__* pQuery; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_2__ SQueryRuntimeEnv ;
typedef  TYPE_3__ SQuery ;
typedef  TYPE_4__ SMeterQuerySupportObj ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUERY_COMPLETED ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  QUERY_NO_DATA_TO_CHECK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC6(SMeterQuerySupportObj *pSupporter, SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  int32_t factor = FUNC0(pQuery->order.order);
  pQuery->ekey += (pQuery->nAggTimeInterval * factor);
  pQuery->skey = pQuery->ekey - (pQuery->nAggTimeInterval - 1) * factor;

  // boundary check
  if (FUNC1(pQuery)) {
    if (pQuery->skey > pSupporter->rawEKey) {
      FUNC5(pQuery, QUERY_COMPLETED);
      return;
    }

    if (pQuery->ekey > pSupporter->rawEKey) {
      pQuery->ekey = pSupporter->rawEKey;
    }
  } else {
    if (pQuery->skey < pSupporter->rawEKey) {
      FUNC5(pQuery, QUERY_COMPLETED);
      return;
    }

    if (pQuery->ekey < pSupporter->rawEKey) {
      pQuery->ekey = pSupporter->rawEKey;
    }
  }

  /* ensure the search in cache will return right position */
  pQuery->lastKey = pQuery->skey;

  TSKEY nextTimestamp = FUNC4(pRuntimeEnv, &pRuntimeEnv->nextPos);
  if ((nextTimestamp > pSupporter->rawEKey && FUNC1(pQuery)) ||
      (nextTimestamp < pSupporter->rawEKey && !FUNC1(pQuery)) ||
      FUNC2(pQuery->over, QUERY_NO_DATA_TO_CHECK)) {
    FUNC5(pQuery, QUERY_COMPLETED);
    return;
  }

  // bridge the gap in group by time function
  if ((nextTimestamp > pQuery->ekey && FUNC1(pQuery)) ||
      (nextTimestamp < pQuery->ekey && !FUNC1(pQuery))) {
    FUNC3(pQuery, nextTimestamp, pSupporter->rawSKey, pSupporter->rawEKey);
  }
}