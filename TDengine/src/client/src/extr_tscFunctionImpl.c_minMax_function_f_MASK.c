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
typedef  double int8_t ;
typedef  double int64_t ;
typedef  size_t int32_t ;
typedef  double int16_t ;
struct TYPE_8__ {int /*<<< orphan*/  hasResult; } ;
struct TYPE_7__ {scalar_t__ inputType; double* aOutputBuf; int /*<<< orphan*/ * ptsList; } ;
typedef  int /*<<< orphan*/  TSKEY ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 double FUNC0 (char*) ; 
 float FUNC1 (char*) ; 
 char* FUNC2 (TYPE_1__*,size_t) ; 
 double FUNC3 (char*) ; 
 size_t FUNC4 (char*) ; 
 double FUNC5 (char*) ; 
 double FUNC6 (char*) ; 
 TYPE_4__* FUNC7 (TYPE_1__*) ; 
 scalar_t__ TSDB_DATA_TYPE_BIGINT ; 
 scalar_t__ TSDB_DATA_TYPE_DOUBLE ; 
 scalar_t__ TSDB_DATA_TYPE_FLOAT ; 
 scalar_t__ TSDB_DATA_TYPE_INT ; 
 scalar_t__ TSDB_DATA_TYPE_SMALLINT ; 
 scalar_t__ TSDB_DATA_TYPE_TINYINT ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,double,double,size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(SQLFunctionCtx *pCtx, int32_t index, int32_t isMin) {
  char *pData = FUNC2(pCtx, index);
  TSKEY key = pCtx->ptsList[index];

  int32_t num = 0;
  if (pCtx->inputType == TSDB_DATA_TYPE_TINYINT) {
    int8_t *output = (int8_t *)pCtx->aOutputBuf;
    int8_t  i = FUNC6(pData);

    FUNC8(pCtx, *output, i, num, isMin, key);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_SMALLINT) {
    int16_t *output = pCtx->aOutputBuf;
    int16_t  i = FUNC3(pData);

    FUNC8(pCtx, *output, i, num, isMin, key);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_INT) {
    int32_t *output = pCtx->aOutputBuf;
    int32_t  i = FUNC4(pData);

    FUNC8(pCtx, *output, i, num, isMin, key);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_BIGINT) {
    int64_t *output = pCtx->aOutputBuf;
    int64_t  i = FUNC5(pData);

    FUNC8(pCtx, *output, i, num, isMin, key);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_FLOAT) {
    float *output = pCtx->aOutputBuf;
    float  i = FUNC1(pData);

    FUNC8(pCtx, *output, i, num, isMin, key);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_DOUBLE) {
    double *output = pCtx->aOutputBuf;
    double  i = FUNC0(pData);

    FUNC8(pCtx, *output, i, num, isMin, key);
  }

  FUNC7(pCtx)->hasResult = DATA_SET_FLAG;
}