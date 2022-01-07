
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_12__ {int inputType; scalar_t__ hasNull; } ;
struct TYPE_11__ {TYPE_1__* interResultBuf; } ;
struct TYPE_10__ {scalar_t__ stage; double avg; int res; } ;
typedef TYPE_1__ SStddevInfo ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 int GET_DOUBLE_VAL (void*) ;
 int GET_FLOAT_VAL (void*) ;
 void* GET_INPUT_CHAR_INDEX (TYPE_3__*,int ) ;
 int GET_INT16_VAL (void*) ;
 int GET_INT32_VAL (void*) ;
 int GET_INT64_VAL (void*) ;
 int GET_INT8_VAL (void*) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int POW2 (int ) ;
 int SET_VAL (TYPE_3__*,int,int) ;






 int avg_function_f (TYPE_3__*,int ) ;
 scalar_t__ isNull (void*,int ) ;
 int pError (char*,int ) ;

__attribute__((used)) static void stddev_function_f(SQLFunctionCtx *pCtx, int32_t index) {

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  SStddevInfo *pStd = pResInfo->interResultBuf;


  if (pStd->stage == 0) {
    avg_function_f(pCtx, index);
  } else {
    double avg = pStd->avg;
    void * pData = GET_INPUT_CHAR_INDEX(pCtx, index);

    if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
      return;
    }

    switch (pCtx->inputType) {
      case 130: {
        pStd->res += POW2(GET_INT32_VAL(pData) - avg);
        break;
      }
      case 131: {
        pStd->res += POW2(GET_FLOAT_VAL(pData) - avg);
        break;
      }
      case 132: {
        pStd->res += POW2(GET_DOUBLE_VAL(pData) - avg);
        break;
      }
      case 133: {
        pStd->res += POW2(GET_INT64_VAL(pData) - avg);
        break;
      }
      case 129: {
        pStd->res += POW2(GET_INT16_VAL(pData) - avg);
        break;
      }
      case 128: {
        pStd->res += POW2(GET_INT8_VAL(pData) - avg);
        break;
      }
      default:
        pError("stddev function not support data type:%d", pCtx->inputType);
    }

    SET_VAL(pCtx, 1, 1);
  }
}
