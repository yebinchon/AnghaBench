
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef double int8_t ;
typedef double int64_t ;
typedef scalar_t__ int32_t ;
typedef double int16_t ;
struct TYPE_14__ {int (* xFunction ) (TYPE_3__*) ;} ;
struct TYPE_11__ {scalar_t__ numOfTagCols; TYPE_3__** pTagCtxList; } ;
struct TYPE_13__ {scalar_t__ size; TYPE_1__ tagInfo; } ;
struct TYPE_12__ {int superTableQ; } ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;


 char DATA_SET_FLAG ;
 int DUPATE_DATA_WITHOUT_TS (TYPE_3__*,double,double,scalar_t__,int) ;
 double GET_DOUBLE_VAL (char*) ;
 float GET_FLOAT_VAL (char*) ;
 char* GET_INPUT_CHAR_INDEX (TYPE_3__*,scalar_t__) ;
 double GET_INT16_VAL (char*) ;
 scalar_t__ GET_INT32_VAL (char*) ;
 double GET_INT64_VAL (char*) ;
 double GET_INT8_VAL (char*) ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int GET_TRUE_DATA_TYPE () ;






 size_t TSDB_FUNC_TAG ;
 TYPE_6__* aAggs ;
 int assert (int ) ;
 int stub1 (TYPE_3__*) ;
 int type ;

__attribute__((used)) static int32_t minmax_merge_impl(SQLFunctionCtx *pCtx, int32_t bytes, char *output, bool isMin) {
  int32_t notNullElems = 0;

  GET_TRUE_DATA_TYPE();

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  assert(pResInfo->superTableQ);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *input = GET_INPUT_CHAR_INDEX(pCtx, i);
    if (input[bytes] != DATA_SET_FLAG) {
      continue;
    }

    switch (type) {
      case 128: {
        int8_t v = GET_INT8_VAL(input);
        DUPATE_DATA_WITHOUT_TS(pCtx, *(int8_t *)output, v, notNullElems, isMin);
        break;
      };
      case 129: {
        int16_t v = GET_INT16_VAL(input);
        DUPATE_DATA_WITHOUT_TS(pCtx, *(int16_t *)output, v, notNullElems, isMin);
        break;
      }
      case 130: {
        int32_t v = GET_INT32_VAL(input);
        if ((*(int32_t *)output < v) ^ isMin) {
          *(int32_t *)output = v;

          for (int32_t i = 0; i < pCtx->tagInfo.numOfTagCols; ++i) {
            SQLFunctionCtx *__ctx = pCtx->tagInfo.pTagCtxList[i];
            aAggs[TSDB_FUNC_TAG].xFunction(__ctx);
          }

          notNullElems++;
        }
        break;
      }
      case 131: {
        float v = GET_FLOAT_VAL(input);
        DUPATE_DATA_WITHOUT_TS(pCtx, *(float *)output, v, notNullElems, isMin);
        break;
      }
      case 132: {
        double v = GET_DOUBLE_VAL(input);
        DUPATE_DATA_WITHOUT_TS(pCtx, *(double *)output, v, notNullElems, isMin);
        break;
      }
      case 133: {
        int64_t v = GET_INT64_VAL(input);
        DUPATE_DATA_WITHOUT_TS(pCtx, *(int64_t *)output, v, notNullElems, isMin);
        break;
      };
      default:
        break;
    }
  }

  return notNullElems;
}
