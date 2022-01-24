#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_8__ {int /*<<< orphan*/ * pQuery; } ;
struct TYPE_9__ {size_t subgroupIdx; scalar_t__ numOfGroupResultPages; TYPE_1__* pSidSet; int /*<<< orphan*/  pMeterDataInfo; TYPE_2__ runtimeEnv; } ;
struct TYPE_7__ {size_t numOfSubSet; scalar_t__* starterPos; } ;
typedef  TYPE_2__ SQueryRuntimeEnv ;
typedef  int /*<<< orphan*/  SQuery ;
typedef  TYPE_3__ SMeterQuerySupportObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t,...) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 () ; 

int32_t FUNC5(SMeterQuerySupportObj *pSupporter) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery *          pQuery = pRuntimeEnv->pQuery;

  int64_t st = FUNC4();

  while (pSupporter->subgroupIdx < pSupporter->pSidSet->numOfSubSet) {
    int32_t start = pSupporter->pSidSet->starterPos[pSupporter->subgroupIdx];
    int32_t end = pSupporter->pSidSet->starterPos[pSupporter->subgroupIdx + 1];

    int32_t ret =
        FUNC3(pSupporter, pQuery, pRuntimeEnv, pSupporter->pMeterDataInfo, start, end);
    pSupporter->subgroupIdx += 1;

    /* this group generates at least one result, return results */
    if (ret > 0) {
      break;
    }

    FUNC1(pSupporter->numOfGroupResultPages == 0);
    FUNC2("QInfo:%p no result in group %d, continue", FUNC0(pQuery), pSupporter->subgroupIdx - 1);
  }

  FUNC2("QInfo:%p merge res data into group, index:%d, total group:%d, elapsed time:%lldms", FUNC0(pQuery),
         pSupporter->subgroupIdx - 1, pSupporter->pSidSet->numOfSubSet, FUNC4() - st);

  return pSupporter->numOfGroupResultPages;
}