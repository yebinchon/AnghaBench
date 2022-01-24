#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  double int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  hasResult; } ;
struct TYPE_7__ {double* aOutputBuf; int /*<<< orphan*/  inputType; scalar_t__ hasNull; } ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 TYPE_4__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_BIGINT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_DOUBLE ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_FLOAT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_INT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_SMALLINT ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_TINYINT ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = FUNC2(pCtx, index);
  if (pCtx->hasNull && FUNC9(pData, pCtx->inputType)) {
    return;
  }

  FUNC8(pCtx, 1, 1);
  int64_t *res = pCtx->aOutputBuf;

  if (pCtx->inputType == TSDB_DATA_TYPE_TINYINT) {
    *res += FUNC6(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_SMALLINT) {
    *res += FUNC3(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_INT) {
    *res += FUNC4(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_BIGINT) {
    *res += FUNC5(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_DOUBLE) {
    double *retVal = pCtx->aOutputBuf;
    *retVal += FUNC0(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_FLOAT) {
    double *retVal = pCtx->aOutputBuf;
    *retVal += FUNC1(pData);
  }

  FUNC7(pCtx)->hasResult = DATA_SET_FLAG;
}