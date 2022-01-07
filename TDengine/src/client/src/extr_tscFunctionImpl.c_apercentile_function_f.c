
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_13__ {int pHisto; } ;
struct TYPE_12__ {int inputType; scalar_t__ hasNull; } ;
struct TYPE_11__ {int hasResult; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;
typedef TYPE_3__ SAPercentileInfo ;


 int DATA_SET_FLAG ;
 double GET_DOUBLE_VAL (void*) ;
 double GET_FLOAT_VAL (void*) ;
 void* GET_INPUT_CHAR_INDEX (TYPE_2__*,int ) ;
 double GET_INT16_VAL (void*) ;
 double GET_INT32_VAL (void*) ;
 double GET_INT64_VAL (void*) ;
 double GET_INT8_VAL (void*) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int SET_VAL (TYPE_2__*,int,int) ;





 TYPE_3__* getAPerctInfo (TYPE_2__*) ;
 scalar_t__ isNull (void*,int ) ;
 int tHistogramAdd (int *,double) ;

__attribute__((used)) static void apercentile_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return;
  }

  SResultInfo * pResInfo = GET_RES_INFO(pCtx);
  SAPercentileInfo *pInfo = getAPerctInfo(pCtx);

  double v = 0;
  switch (pCtx->inputType) {
    case 128:
      v = GET_INT8_VAL(pData);
      break;
    case 129:
      v = GET_INT16_VAL(pData);
      break;
    case 132:
      v = GET_INT64_VAL(pData);
      break;
    case 130:
      v = GET_FLOAT_VAL(pData);
      break;
    case 131:
      v = GET_DOUBLE_VAL(pData);
      break;
    default:
      v = GET_INT32_VAL(pData);
      break;
  }

  tHistogramAdd(&pInfo->pHisto, v);

  SET_VAL(pCtx, 1, 1);
  pResInfo->hasResult = DATA_SET_FLAG;
}
