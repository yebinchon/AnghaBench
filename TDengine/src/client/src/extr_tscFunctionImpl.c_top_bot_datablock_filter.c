
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int dKey; int i64Key; } ;
struct TYPE_11__ {TYPE_2__ v; } ;
typedef TYPE_3__ tValuePair ;
typedef scalar_t__ int32_t ;
struct TYPE_14__ {scalar_t__ interResultBuf; } ;
struct TYPE_13__ {int inputType; TYPE_1__* param; } ;
struct TYPE_12__ {scalar_t__ num; TYPE_3__* res; } ;
struct TYPE_9__ {scalar_t__ i64Key; } ;
typedef TYPE_4__ STopBotInfo ;
typedef TYPE_5__ SQLFunctionCtx ;


 int GET_DOUBLE_VAL (char*) ;
 int GET_FLOAT_VAL (char*) ;
 int GET_INT16_VAL (char*) ;
 int GET_INT32_VAL (char*) ;
 int GET_INT64_VAL (char*) ;
 int GET_INT8_VAL (char*) ;
 TYPE_7__* GET_RES_INFO (TYPE_5__*) ;






 scalar_t__ TSDB_FUNC_TOP ;

bool top_bot_datablock_filter(SQLFunctionCtx *pCtx, int32_t functionId, char *minval, char *maxval) {
  STopBotInfo *pTopBotInfo = (STopBotInfo *)GET_RES_INFO(pCtx)->interResultBuf;

  int32_t numOfExistsRes = pTopBotInfo->num;


  if (numOfExistsRes < pCtx->param[0].i64Key) {
    return 1;
  }

  tValuePair *pRes = pTopBotInfo->res;

  if (functionId == TSDB_FUNC_TOP) {
    switch (pCtx->inputType) {
      case 128:
        return GET_INT8_VAL(maxval) > pRes[0].v.i64Key;
      case 129:
        return GET_INT16_VAL(maxval) > pRes[0].v.i64Key;
      case 130:
        return GET_INT32_VAL(maxval) > pRes[0].v.i64Key;
      case 133:
        return GET_INT64_VAL(maxval) > pRes[0].v.i64Key;
      case 131:
        return GET_FLOAT_VAL(maxval) > pRes[0].v.dKey;
      case 132:
        return GET_DOUBLE_VAL(maxval) > pRes[0].v.dKey;
      default:
        return 1;
    }
  } else {
    switch (pCtx->inputType) {
      case 128:
        return GET_INT8_VAL(minval) < pRes[0].v.i64Key;
      case 129:
        return GET_INT16_VAL(minval) < pRes[0].v.i64Key;
      case 130:
        return GET_INT32_VAL(minval) < pRes[0].v.i64Key;
      case 133:
        return GET_INT64_VAL(minval) < pRes[0].v.i64Key;
      case 131:
        return GET_FLOAT_VAL(minval) < pRes[0].v.dKey;
      case 132:
        return GET_DOUBLE_VAL(minval) < pRes[0].v.dKey;
      default:
        return 1;
    }
  }
}
