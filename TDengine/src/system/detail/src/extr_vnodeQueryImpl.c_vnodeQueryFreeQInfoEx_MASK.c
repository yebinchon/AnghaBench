#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_12__ {size_t numOfSubSet; } ;
struct TYPE_11__ {size_t numOfMeters; struct TYPE_11__* pResult; struct TYPE_11__* pMeterDataInfo; int /*<<< orphan*/  pBlock; int /*<<< orphan*/  pMeterQInfo; TYPE_6__* pSidSet; int /*<<< orphan*/  extBufFile; int /*<<< orphan*/  meterOutputFd; int /*<<< orphan*/  bufSize; int /*<<< orphan*/ * meterOutputMMapBuf; int /*<<< orphan*/ * pMeterObj; struct TYPE_11__* pMeterSidExtInfo; int /*<<< orphan*/  runtimeEnv; } ;
struct TYPE_9__ {int /*<<< orphan*/  numOfOutputCols; int /*<<< orphan*/  pGroupbyExpr; } ;
struct TYPE_10__ {TYPE_3__* pMeterQuerySupporter; TYPE_1__ query; } ;
typedef  TYPE_1__ SQuery ;
typedef  TYPE_2__ SQInfo ;
typedef  TYPE_3__ SMeterQuerySupportObj ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(SQInfo *pQInfo) {
  if (pQInfo == NULL || pQInfo->pMeterQuerySupporter == NULL) {
    return;
  }

  SQuery *               pQuery = &pQInfo->query;
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;

  FUNC11(&pSupporter->runtimeEnv);
  FUNC12(pSupporter->pMeterSidExtInfo);

  if (pSupporter->pMeterObj != NULL) {
    FUNC9(pSupporter->pMeterObj);
    pSupporter->pMeterObj = NULL;
  }

  if (pSupporter->pSidSet != NULL || FUNC6(pQInfo->query.pGroupbyExpr)) {
    int32_t size = 0;
    if (FUNC6(pQInfo->query.pGroupbyExpr)) {
      size = 10000;
    } else if (pSupporter->pSidSet != NULL) {
      size = pSupporter->pSidSet->numOfSubSet;
    }

    for (int32_t i = 0; i < size; ++i) {
      FUNC3(&pSupporter->pResult[i], pQInfo->query.numOfOutputCols);
    }
  }

  if (FUNC0(pSupporter->meterOutputFd)) {
    FUNC1(pSupporter->meterOutputMMapBuf != NULL);
    FUNC2("QInfo:%p disk-based output buffer during query:%lld bytes", pQInfo, pSupporter->bufSize);
    FUNC7(pSupporter->meterOutputMMapBuf, pSupporter->bufSize);
    FUNC10(pSupporter->meterOutputFd);

    FUNC13(pSupporter->extBufFile);
  }

  FUNC8(&pSupporter->pSidSet);

  if (pSupporter->pMeterDataInfo != NULL) {
    for (int32_t j = 0; j < pSupporter->numOfMeters; ++j) {
      FUNC4(pSupporter->pMeterDataInfo[j].pMeterQInfo, pQuery->numOfOutputCols);
      FUNC5(pSupporter->pMeterDataInfo[j].pBlock);
    }
  }

  FUNC12(pSupporter->pMeterDataInfo);

  FUNC12(pSupporter->pResult);
  FUNC12(pQInfo->pMeterQuerySupporter);
}