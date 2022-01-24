#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ offset; } ;
struct TYPE_19__ {scalar_t__ slot; scalar_t__ pos; scalar_t__ pointsRead; scalar_t__ pointsToRead; int /*<<< orphan*/  pGroupbyExpr; TYPE_1__ limit; int /*<<< orphan*/  over; } ;
struct TYPE_20__ {scalar_t__ pointsRead; TYPE_2__* pMeterQuerySupporter; TYPE_4__ query; } ;
struct TYPE_18__ {int /*<<< orphan*/  pResult; } ;
struct TYPE_17__ {scalar_t__ subgroupIdx; TYPE_3__ runtimeEnv; } ;
typedef  TYPE_3__ SQueryRuntimeEnv ;
typedef  TYPE_4__ SQuery ;
typedef  TYPE_5__ SQInfo ;

/* Variables and functions */
 int QUERY_COMPLETED ; 
 int QUERY_NO_DATA_TO_CHECK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC12(SQInfo *pQInfo) {
  SQuery *          pQuery = &pQInfo->query;
  SQueryRuntimeEnv *pRuntimeEnv = &pQInfo->pMeterQuerySupporter->runtimeEnv;

  FUNC1(pQuery->slot >= 0 && pQuery->pos >= 0);

  FUNC11(pRuntimeEnv);
  FUNC3(pRuntimeEnv);

  if (FUNC8(pQuery)) {
    return;
  }

  // since the numOfOutputElems must be identical for all sql functions that are allowed to be executed simutanelously.
  pQuery->pointsRead = FUNC6(pRuntimeEnv);
  FUNC1(pQuery->pointsRead <= pQuery->pointsToRead &&
         FUNC0(pQuery->over, QUERY_COMPLETED | QUERY_NO_DATA_TO_CHECK));

  // must be top/bottom query if offset > 0
  if (pQuery->limit.offset > 0) {
    FUNC1(FUNC9(pQuery));
  }

  if (FUNC7(pQuery->pGroupbyExpr)) {
    pQInfo->pMeterQuerySupporter->subgroupIdx = 0;
    pQuery->pointsRead = 0;
    FUNC2(pQInfo, pRuntimeEnv->pResult);
  }

  FUNC5(pRuntimeEnv);
  FUNC4(pQInfo);
  FUNC10(pRuntimeEnv);

  pQInfo->pointsRead = pQuery->pointsRead;
}