#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_12__ {int /*<<< orphan*/  aOutputBuf; int /*<<< orphan*/  inputType; scalar_t__ hasNull; } ;
struct TYPE_11__ {TYPE_1__* interResultBuf; scalar_t__ superTableQ; void* hasResult; } ;
struct TYPE_10__ {double max; double min; void* hasResult; } ;
typedef  TYPE_1__ SSpreadInfo ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 void* DATA_SET_FLAG ; 
 double FUNC0 (void*) ; 
 double FUNC1 (void*) ; 
 void* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 double FUNC3 (void*) ; 
 double FUNC4 (void*) ; 
 double FUNC5 (void*) ; 
 double FUNC6 (void*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_BIGINT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_DOUBLE ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_FLOAT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_INT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_SMALLINT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_TIMESTAMP ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_TINYINT ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC11(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = FUNC2(pCtx, index);
  if (pCtx->hasNull && FUNC9(pData, pCtx->inputType)) {
    return;
  }

  FUNC8(pCtx, 1, 1);

  SResultInfo *pResInfo = FUNC7(pCtx);
  SSpreadInfo *pInfo = pResInfo->interResultBuf;

  double val = 0.0;
  if (pCtx->inputType == TSDB_DATA_TYPE_TINYINT) {
    val = FUNC6(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_SMALLINT) {
    val = FUNC3(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_INT) {
    val = FUNC4(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_BIGINT || pCtx->inputType == TSDB_DATA_TYPE_TIMESTAMP) {
    val = FUNC5(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_DOUBLE) {
    val = FUNC0(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_FLOAT) {
    val = FUNC1(pData);
  }

  // keep the result data in output buffer, not in the intermediate buffer
  if (val > pInfo->max) {
    pInfo->max = val;
  }

  if (val < pInfo->min) {
    pInfo->min = val;
  }

  pResInfo->hasResult = DATA_SET_FLAG;
  pInfo->hasResult = DATA_SET_FLAG;

  if (pResInfo->superTableQ) {
    FUNC10(pCtx->aOutputBuf, pResInfo->interResultBuf, sizeof(SSpreadInfo));
  }
}