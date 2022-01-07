
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_11__ {int num; int sum; } ;
struct TYPE_10__ {int aOutputBuf; int inputType; scalar_t__ hasNull; } ;
struct TYPE_9__ {scalar_t__ interResultBuf; scalar_t__ superTableQ; int hasResult; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;
typedef TYPE_3__ SAvgInfo ;


 int DATA_SET_FLAG ;
 scalar_t__ GET_DOUBLE_VAL (void*) ;
 scalar_t__ GET_FLOAT_VAL (void*) ;
 void* GET_INPUT_CHAR_INDEX (TYPE_2__*,int ) ;
 scalar_t__ GET_INT16_VAL (void*) ;
 scalar_t__ GET_INT32_VAL (void*) ;
 scalar_t__ GET_INT64_VAL (void*) ;
 scalar_t__ GET_INT8_VAL (void*) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 int SET_VAL (TYPE_2__*,int,int) ;
 int TSDB_DATA_TYPE_BIGINT ;
 int TSDB_DATA_TYPE_DOUBLE ;
 int TSDB_DATA_TYPE_FLOAT ;
 int TSDB_DATA_TYPE_INT ;
 int TSDB_DATA_TYPE_SMALLINT ;
 int TSDB_DATA_TYPE_TINYINT ;
 scalar_t__ isNull (void*,int ) ;
 int memcpy (int ,scalar_t__,int) ;

__attribute__((used)) static void avg_function_f(SQLFunctionCtx *pCtx, int32_t index) {
  void *pData = GET_INPUT_CHAR_INDEX(pCtx, index);
  if (pCtx->hasNull && isNull(pData, pCtx->inputType)) {
    return;
  }

  SET_VAL(pCtx, 1, 1);


  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  SAvgInfo *pAvgInfo = (SAvgInfo *)pResInfo->interResultBuf;

  if (pCtx->inputType == TSDB_DATA_TYPE_TINYINT) {
    pAvgInfo->sum += GET_INT8_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_SMALLINT) {
    pAvgInfo->sum += GET_INT16_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_INT) {
    pAvgInfo->sum += GET_INT32_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_BIGINT) {
    pAvgInfo->sum += GET_INT64_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_DOUBLE) {
    pAvgInfo->sum += GET_DOUBLE_VAL(pData);
  } else if (pCtx->inputType == TSDB_DATA_TYPE_FLOAT) {
    pAvgInfo->sum += GET_FLOAT_VAL(pData);
  }


  pAvgInfo->num += 1;


  pResInfo->hasResult = DATA_SET_FLAG;


  if (pResInfo->superTableQ) {
    memcpy(pCtx->aOutputBuf, pResInfo->interResultBuf, sizeof(SAvgInfo));
  }
}
