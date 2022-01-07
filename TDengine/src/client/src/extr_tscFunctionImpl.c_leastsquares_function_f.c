
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef double int8_t ;
typedef double int64_t ;
typedef double int32_t ;
typedef double int16_t ;
struct TYPE_13__ {double** mat; scalar_t__ num; int startVal; } ;
struct TYPE_12__ {int inputType; TYPE_1__* param; scalar_t__ hasNull; } ;
struct TYPE_11__ {int hasResult; TYPE_4__* interResultBuf; } ;
struct TYPE_10__ {int dKey; } ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;
typedef TYPE_4__ SLeastsquareInfo ;


 int DATA_SET_FLAG ;
 void* GET_INPUT_CHAR_INDEX (TYPE_3__*,double) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int LEASTSQR_CAL (double**,int ,...) ;
 int SET_VAL (TYPE_3__*,int,int) ;






 scalar_t__ isNull (void*,int ) ;
 int pError (char*,int ) ;

__attribute__((used)) static void leastsquares_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return;
  }

  SResultInfo * pResInfo = GET_RES_INFO(pCtx);
  SLeastsquareInfo *pInfo = pResInfo->interResultBuf;

  double(*param)[3] = pInfo->mat;

  switch (pCtx->inputType) {
    case 130: {
      int32_t *p = pData;
      LEASTSQR_CAL(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    };
    case 128: {
      int8_t *p = pData;
      LEASTSQR_CAL(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    case 129: {
      int16_t *p = pData;
      LEASTSQR_CAL(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    case 133: {
      int64_t *p = pData;
      LEASTSQR_CAL(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    case 131: {
      float *p = pData;
      LEASTSQR_CAL(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    case 132: {
      double *p = pData;
      LEASTSQR_CAL(param, pInfo->startVal, p, index, pCtx->param[1].dKey);
      break;
    }
    default:
      pError("error data type in leastsquare function:%d", pCtx->inputType);
  };

  SET_VAL(pCtx, 1, 1);
  pInfo->num += 1;

  if (pInfo->num > 0) {
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}
