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
typedef  double int64_t ;
struct TYPE_9__ {double num; double sum; } ;
struct TYPE_8__ {scalar_t__ currentStage; scalar_t__ inputType; scalar_t__ aOutputBuf; int /*<<< orphan*/  outputBytes; int /*<<< orphan*/  outputType; } ;
struct TYPE_7__ {int numOfRes; scalar_t__ interResultBuf; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;
typedef  TYPE_3__ SAvgInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ SECONDARY_STAGE_MERGE ; 
 scalar_t__ TSDB_DATA_TYPE_BINARY ; 
 scalar_t__ TSDB_DATA_TYPE_DOUBLE ; 
 scalar_t__ TSDB_DATA_TYPE_TINYINT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = FUNC1(pCtx);

  if (pCtx->currentStage == SECONDARY_STAGE_MERGE) {
    FUNC2(pCtx->inputType == TSDB_DATA_TYPE_BINARY);

    if (FUNC0(pResInfo->interResultBuf) <= 0) {
      FUNC3(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;  // empty table
    }

    *(double *)pCtx->aOutputBuf = (*(double *)pCtx->aOutputBuf) / *(int64_t *)pResInfo->interResultBuf;
  } else {  // this is the secondary merge, only in the secondary merge, the input type is TSDB_DATA_TYPE_BINARY
    FUNC2(pCtx->inputType >= TSDB_DATA_TYPE_TINYINT && pCtx->inputType <= TSDB_DATA_TYPE_DOUBLE);

    SAvgInfo *pAvgInfo = (SAvgInfo *)pResInfo->interResultBuf;

    if (pAvgInfo->num == 0) {  // all data are NULL or empty table
      FUNC3(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }

    *(double *)pCtx->aOutputBuf = pAvgInfo->sum / pAvgInfo->num;
  }

  // cannot set the numOfIteratedElems again since it is set during previous iteration
  FUNC1(pCtx)->numOfRes = 1;
}