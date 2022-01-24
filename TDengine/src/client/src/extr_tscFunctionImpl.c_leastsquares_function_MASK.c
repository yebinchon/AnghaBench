#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  float int8_t ;
typedef  float int64_t ;
typedef  size_t int32_t ;
typedef  float int16_t ;
struct TYPE_14__ {double** mat; double startVal; size_t num; } ;
struct TYPE_13__ {int inputType; size_t size; TYPE_1__* param; int /*<<< orphan*/  hasNull; } ;
struct TYPE_12__ {int /*<<< orphan*/  hasResult; TYPE_4__* interResultBuf; } ;
struct TYPE_11__ {double dKey; } ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;
typedef  TYPE_4__ SLeastsquareInfo ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 void* FUNC0 (TYPE_3__*) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,double**,double,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,size_t,int) ; 
#define  TSDB_DATA_TYPE_BIGINT 133 
#define  TSDB_DATA_TYPE_DOUBLE 132 
#define  TSDB_DATA_TYPE_FLOAT 131 
#define  TSDB_DATA_TYPE_INT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC4 (size_t*,int) ; 

__attribute__((used)) static void FUNC5(SQLFunctionCtx *pCtx) {
  SResultInfo *     pResInfo = FUNC1(pCtx);
  SLeastsquareInfo *pInfo = pResInfo->interResultBuf;

  double(*param)[3] = pInfo->mat;
  double x = pInfo->startVal;

  void *pData = FUNC0(pCtx);

  int32_t numOfElem = 0;
  switch (pCtx->inputType) {
    case TSDB_DATA_TYPE_INT: {
      int32_t *p = pData;
      //            LEASTSQR_CAL_LOOP(pCtx, param, pParamData, p);
      for (int32_t i = 0; i < pCtx->size; ++i) {
        if (pCtx->hasNull && FUNC4(p, pCtx->inputType)) {
          continue;
        }

        param[0][0] += x * x;
        param[0][1] += x;
        param[0][2] += x * p[i];
        param[1][2] += p[i];

        x += pCtx->param[1].dKey;
        numOfElem++;
      }
      break;
    };
    case TSDB_DATA_TYPE_BIGINT: {
      int64_t *p = pData;
      FUNC2(pCtx, param, x, p, pCtx->inputType, numOfElem, pCtx->param[1].dKey);
      break;
    };
    case TSDB_DATA_TYPE_DOUBLE: {
      double *p = pData;
      FUNC2(pCtx, param, x, p, pCtx->inputType, numOfElem, pCtx->param[1].dKey);
      break;
    };
    case TSDB_DATA_TYPE_FLOAT: {
      float *p = pData;
      FUNC2(pCtx, param, x, p, pCtx->inputType, numOfElem, pCtx->param[1].dKey);
      break;
    };
    case TSDB_DATA_TYPE_SMALLINT: {
      int16_t *p = pData;
      FUNC2(pCtx, param, x, p, pCtx->inputType, numOfElem, pCtx->param[1].dKey);
      break;
    };
    case TSDB_DATA_TYPE_TINYINT: {
      int8_t *p = pData;
      FUNC2(pCtx, param, x, p, pCtx->inputType, numOfElem, pCtx->param[1].dKey);
      break;
    };
  }

  pInfo->startVal = x;
  pInfo->num += numOfElem;

  if (pInfo->num > 0) {
    pResInfo->hasResult = DATA_SET_FLAG;
  }

  FUNC3(pCtx, numOfElem, 1);
}