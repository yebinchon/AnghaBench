#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ numOfElems; } ;
struct TYPE_13__ {TYPE_5__* pHisto; } ;
struct TYPE_12__ {scalar_t__ currentStage; int /*<<< orphan*/  outputBytes; int /*<<< orphan*/  outputType; int /*<<< orphan*/  aOutputBuf; TYPE_1__* param; } ;
struct TYPE_11__ {scalar_t__ hasResult; TYPE_4__* interResultBuf; } ;
struct TYPE_10__ {scalar_t__ nType; double i64Key; double dKey; } ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;
typedef  TYPE_4__ SAPercentileInfo ;

/* Variables and functions */
 scalar_t__ DATA_SET_FLAG ; 
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 scalar_t__ SECONDARY_STAGE_MERGE ; 
 scalar_t__ TSDB_DATA_TYPE_INT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (double*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double* FUNC6 (TYPE_5__*,double*,int) ; 

__attribute__((used)) static void FUNC7(SQLFunctionCtx *pCtx) {
  double v = (pCtx->param[0].nType == TSDB_DATA_TYPE_INT) ? pCtx->param[0].i64Key : pCtx->param[0].dKey;

  SResultInfo *     pResInfo = FUNC0(pCtx);
  SAPercentileInfo *pOutput = pResInfo->interResultBuf;

  if (pCtx->currentStage == SECONDARY_STAGE_MERGE) {
    if (pResInfo->hasResult == DATA_SET_FLAG) {  // check for null
      FUNC1(pOutput->pHisto->numOfElems > 0);

      double  ratio[] = {v};
      double *res = FUNC6(pOutput->pHisto, ratio, 1);

      FUNC3(pCtx->aOutputBuf, res, sizeof(double));
      FUNC2(res);
    } else {
      FUNC5(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }
  } else {
    if (pOutput->pHisto->numOfElems > 0) {
      double ratio[] = {v};

      double *res = FUNC6(pOutput->pHisto, ratio, 1);
      FUNC3(pCtx->aOutputBuf, res, sizeof(double));
      FUNC2(res);
    } else {  // no need to free
      FUNC5(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }
  }

  FUNC4(pResInfo);
}