
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double int64_t ;
typedef int int32_t ;
struct TYPE_8__ {int hasResult; } ;
struct TYPE_7__ {double* aOutputBuf; int inputType; scalar_t__ hasNull; } ;
typedef TYPE_1__ SQLFunctionCtx ;


 int DATA_SET_FLAG ;
 scalar_t__ GET_DOUBLE_VAL (void*) ;
 scalar_t__ GET_FLOAT_VAL (void*) ;
 void* GET_INPUT_CHAR_INDEX (TYPE_1__*,int ) ;
 scalar_t__ GET_INT16_VAL (void*) ;
 scalar_t__ GET_INT32_VAL (void*) ;
 scalar_t__ GET_INT64_VAL (void*) ;
 scalar_t__ GET_INT8_VAL (void*) ;
 TYPE_4__* GET_RES_INFO (TYPE_1__*) ;
 int SET_VAL (TYPE_1__*,int,int) ;
 int TSDB_DATA_TYPE_BIGINT ;
 int TSDB_DATA_TYPE_DOUBLE ;
 int TSDB_DATA_TYPE_FLOAT ;
 int TSDB_DATA_TYPE_INT ;
 int TSDB_DATA_TYPE_SMALLINT ;
 int TSDB_DATA_TYPE_TINYINT ;
 scalar_t__ isNull (void*,int ) ;

__attribute__((used)) static void do_sum_f(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return;
  }

  SET_VAL(pCtx, 1, 1);
  int64_t *res = pCtx->aOutputBuf;

  if (pCtx->inputType == TSDB_DATA_TYPE_TINYINT) {
    *res += GET_INT8_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_SMALLINT) {
    *res += GET_INT16_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_INT) {
    *res += GET_INT32_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_BIGINT) {
    *res += GET_INT64_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_DOUBLE) {
    double *retVal = pCtx->aOutputBuf;
    *retVal += GET_DOUBLE_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_FLOAT) {
    double *retVal = pCtx->aOutputBuf;
    *retVal += GET_FLOAT_VAL(pData);
  }

  GET_RES_INFO(pCtx)->hasResult = DATA_SET_FLAG;
}
