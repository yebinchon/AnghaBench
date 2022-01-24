#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  double int8_t ;
typedef  double int64_t ;
typedef  double int32_t ;
typedef  double int16_t ;
struct TYPE_13__ {double** mat; scalar_t__ num; int /*<<< orphan*/  startVal; } ;
struct TYPE_12__ {int /*<<< orphan*/  inputType; TYPE_1__* param; scalar_t__ hasNull; } ;
struct TYPE_11__ {int /*<<< orphan*/  hasResult; TYPE_4__* interResultBuf; } ;
struct TYPE_10__ {int /*<<< orphan*/  dKey; } ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;
typedef  TYPE_4__ SLeastsquareInfo ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_SET_FLAG ; 
 void* FUNC0 (TYPE_3__*,double) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (double**,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int) ; 
#define  TSDB_DATA_TYPE_BIGINT 133 
#define  TSDB_DATA_TYPE_DOUBLE 132 
#define  TSDB_DATA_TYPE_FLOAT 131 
#define  TSDB_DATA_TYPE_INT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = FUNC0(pCtx, index);
  if (pCtx->hasNull && FUNC4(pData, pCtx->inputType)) {
    return;
  }

  SResultInfo *     pResInfo = FUNC1(pCtx);
  SLeastsquareInfo *pInfo = pResInfo->interResultBuf;

  double(*param)[3] = pInfo->mat;

  switch (pCtx->inputType) {
    case TSDB_DATA_TYPE_INT: {
      int32_t *p = pData;
      FUNC2(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    };
    case TSDB_DATA_TYPE_TINYINT: {
      int8_t *p = pData;
      FUNC2(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    case TSDB_DATA_TYPE_SMALLINT: {
      int16_t *p = pData;
      FUNC2(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    case TSDB_DATA_TYPE_BIGINT: {
      int64_t *p = pData;
      FUNC2(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    case TSDB_DATA_TYPE_FLOAT: {
      float *p = pData;
      FUNC2(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    case TSDB_DATA_TYPE_DOUBLE: {
      double *p = pData;
      FUNC2(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    default:
      FUNC5("error data type in leastsquare function:%d", pCtx->inputType);
  };

  FUNC3(pCtx, 1, 1);
  pInfo->num += 1;

  if (pInfo->num > 0) {
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}