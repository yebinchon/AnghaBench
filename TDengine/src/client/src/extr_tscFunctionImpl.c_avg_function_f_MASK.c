#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_11__ {int num; int /*<<< orphan*/  sum; } ;
struct TYPE_10__ {int /*<<< orphan*/  aOutputBuf; int /*<<< orphan*/  inputType; scalar_t__ hasNull; } ;
struct TYPE_9__ {scalar_t__ interResultBuf; scalar_t__ superTableQ; int /*<<< orphan*/  hasResult; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;
typedef  TYPE_3__ SAvgInfo ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_BIGINT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_DOUBLE ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_FLOAT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_INT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_SMALLINT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_TINYINT ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC11(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = FUNC2(pCtx, index);
  if (pCtx->hasNull && FUNC9(pData, pCtx->inputType)) {
    return;
  }

  FUNC8(pCtx, 1, 1);

  // NOTE: keep the intermediate result into the interResultBuf
  SResultInfo *pResInfo = FUNC7(pCtx);

  SAvgInfo *pAvgInfo = (SAvgInfo *)pResInfo->interResultBuf;

  if (pCtx->inputType == TSDB_DATA_TYPE_TINYINT) {
    pAvgInfo->sum += FUNC6(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_SMALLINT) {
    pAvgInfo->sum += FUNC3(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_INT) {
    pAvgInfo->sum += FUNC4(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_BIGINT) {
    pAvgInfo->sum += FUNC5(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_DOUBLE) {
    pAvgInfo->sum += FUNC0(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_FLOAT) {
    pAvgInfo->sum += FUNC1(pData);
  }

  // restore sum and count of elements
  pAvgInfo->num += 1;

  // set has result flag
  pResInfo->hasResult = DATA_SET_FLAG;

  // keep the data into the final output buffer for super table query since this execution may be the last one
  if (pResInfo->superTableQ) {
    FUNC10(pCtx->aOutputBuf, pResInfo->interResultBuf, sizeof(SAvgInfo));
  }
}