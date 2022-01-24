#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_25__ {scalar_t__ subgroupIdx; int numOfMeters; scalar_t__ numOfGroupResultPages; int /*<<< orphan*/  pResult; TYPE_1__* pSidSet; int /*<<< orphan*/  rawEKey; int /*<<< orphan*/  rawSKey; int /*<<< orphan*/ * pMeterDataInfo; } ;
struct TYPE_22__ {int order; } ;
struct TYPE_23__ {scalar_t__ nAggTimeInterval; scalar_t__ pointsRead; TYPE_13__** sdata; TYPE_2__ order; } ;
struct TYPE_24__ {int /*<<< orphan*/  pointsReturned; int /*<<< orphan*/  pointsRead; TYPE_3__ query; TYPE_5__* pMeterQuerySupporter; } ;
struct TYPE_21__ {int /*<<< orphan*/  numOfSubSet; } ;
struct TYPE_20__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_3__ SQuery ;
typedef  TYPE_4__ SQInfo ;
typedef  TYPE_5__ SMeterQuerySupportObj ;
typedef  int /*<<< orphan*/  SMeterDataInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_4__*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__**,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC15(SQInfo *pQInfo) {
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQuery *               pQuery = &pQInfo->query;

  if (pSupporter->subgroupIdx > 0) {
    /*
     * if the subgroupIdx > 0, the query process must be completed yet, we only need to
     * copy the data into output buffer
     */
    if (pQuery->nAggTimeInterval > 0) {
      FUNC3(pSupporter, pQuery);

#ifdef _DEBUG_VIEW
      displayInterResult(pQuery->sdata, pQuery, pQuery->sdata[0]->len);
#endif
    } else {
      FUNC2(pQInfo, pSupporter->pResult);
    }

    pQInfo->pointsRead += pQuery->pointsRead;

    if (pQuery->pointsRead == 0) {
      FUNC14(pSupporter);
    }

    FUNC5("QInfo:%p points returned:%d, totalRead:%d totalReturn:%d", pQInfo, pQuery->pointsRead, pQInfo->pointsRead,
           pQInfo->pointsReturned);
    return;
  }

  pSupporter->pMeterDataInfo = (SMeterDataInfo *)FUNC1(1, sizeof(SMeterDataInfo) * pSupporter->numOfMeters);
  if (pSupporter->pMeterDataInfo == NULL) {
    FUNC4("QInfo:%p failed to allocate memory, %s", pQInfo, FUNC12(errno));
    return;
  }

  FUNC5("QInfo:%p query start, qrange:%lld-%lld, order:%d, group:%d", pQInfo, pSupporter->rawSKey, pSupporter->rawEKey,
         pQuery->order.order, pSupporter->pSidSet->numOfSubSet);

  FUNC5("QInfo:%p main query scan start", pQInfo);
  int64_t st = FUNC13();
  FUNC9(pQInfo);
  int64_t et = FUNC13();
  FUNC5("QInfo:%p main scan completed, elapsed time: %lldms, supplementary scan start, order:%d", pQInfo, et - st,
         pQuery->order.order ^ 1);

  FUNC7(pSupporter);
  FUNC8(pQInfo);

  if (FUNC10(pQuery)) {
    FUNC5("QInfo:%p query killed, abort", pQInfo);
    return;
  }

  if (pQuery->nAggTimeInterval > 0) {
    FUNC0(pSupporter->subgroupIdx == 0 && pSupporter->numOfGroupResultPages == 0);

    FUNC11(pSupporter);
    FUNC3(pSupporter, pQuery);

#ifdef _DEBUG_VIEW
    displayInterResult(pQuery->sdata, pQuery, pQuery->sdata[0]->len);
#endif
  } else {  // not a interval query
    FUNC2(pQInfo, pSupporter->pResult);
  }

  // handle the limitation of output buffer
  pQInfo->pointsRead += pQuery->pointsRead;
  FUNC5("QInfo:%p points returned:%d, totalRead:%d totalReturn:%d", pQInfo, pQuery->pointsRead, pQInfo->pointsRead,
         pQInfo->pointsReturned);
}