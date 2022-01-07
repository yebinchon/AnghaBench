
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_13__ {int pHisto; } ;
struct TYPE_12__ {scalar_t__ size; scalar_t__ hasNull; int inputType; } ;
struct TYPE_11__ {int hasResult; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;
typedef TYPE_3__ SAPercentileInfo ;


 int DATA_SET_FLAG ;
 double GET_DOUBLE_VAL (char*) ;
 double GET_FLOAT_VAL (char*) ;
 char* GET_INPUT_CHAR_INDEX (TYPE_2__*,scalar_t__) ;
 double GET_INT16_VAL (char*) ;
 double GET_INT32_VAL (char*) ;
 double GET_INT64_VAL (char*) ;
 double GET_INT8_VAL (char*) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int SET_VAL (TYPE_2__*,scalar_t__,int) ;





 int assert (int) ;
 TYPE_3__* getAPerctInfo (TYPE_2__*) ;
 scalar_t__ isNull (char*,int ) ;
 int tHistogramAdd (int *,double) ;

__attribute__((used)) static void apercentile_function(SQLFunctionCtx *pCtx) {
  int32_t notNullElems = 0;

  SResultInfo * pResInfo = GET_RES_INFO(pCtx);
  SAPercentileInfo *pInfo = getAPerctInfo(pCtx);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *data = GET_INPUT_CHAR_INDEX(pCtx, i);
    if (pCtx->hasNull && isNull(data, pCtx->inputType)) {
      continue;
    }

    notNullElems += 1;
    double v = 0;

    switch (pCtx->inputType) {
      case 128:
        v = GET_INT8_VAL(data);
        break;
      case 129:
        v = GET_INT16_VAL(data);
        break;
      case 132:
        v = GET_INT64_VAL(data);
        break;
      case 130:
        v = GET_FLOAT_VAL(data);
        break;
      case 131:
        v = GET_DOUBLE_VAL(data);
        break;
      default:
        v = GET_INT32_VAL(data);
        break;
    }

    tHistogramAdd(&pInfo->pHisto, v);
  }

  if (!pCtx->hasNull) {
    assert(pCtx->size == notNullElems);
  }

  SET_VAL(pCtx, notNullElems, 1);

  if (notNullElems > 0) {
    pResInfo->hasResult = DATA_SET_FLAG;
  }
}
