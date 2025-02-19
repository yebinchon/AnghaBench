
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double int64_t ;
struct TYPE_9__ {double num; double sum; } ;
struct TYPE_8__ {scalar_t__ currentStage; scalar_t__ inputType; scalar_t__ aOutputBuf; int outputBytes; int outputType; } ;
struct TYPE_7__ {int numOfRes; scalar_t__ interResultBuf; } ;
typedef TYPE_1__ SResultInfo ;
typedef TYPE_2__ SQLFunctionCtx ;
typedef TYPE_3__ SAvgInfo ;


 scalar_t__ GET_INT64_VAL (scalar_t__) ;
 TYPE_1__* GET_RES_INFO (TYPE_2__*) ;
 scalar_t__ SECONDARY_STAGE_MERGE ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_DOUBLE ;
 scalar_t__ TSDB_DATA_TYPE_TINYINT ;
 int assert (int) ;
 int setNull (scalar_t__,int ,int ) ;

__attribute__((used)) static void avg_finalizer(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  if (pCtx->currentStage == SECONDARY_STAGE_MERGE) {
    assert(pCtx->inputType == TSDB_DATA_TYPE_BINARY);

    if (GET_INT64_VAL(pResInfo->interResultBuf) <= 0) {
      setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }

    *(double *)pCtx->aOutputBuf = (*(double *)pCtx->aOutputBuf) / *(int64_t *)pResInfo->interResultBuf;
  } else {
    assert(pCtx->inputType >= TSDB_DATA_TYPE_TINYINT && pCtx->inputType <= TSDB_DATA_TYPE_DOUBLE);

    SAvgInfo *pAvgInfo = (SAvgInfo *)pResInfo->interResultBuf;

    if (pAvgInfo->num == 0) {
      setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }

    *(double *)pCtx->aOutputBuf = pAvgInfo->sum / pAvgInfo->num;
  }


  GET_RES_INFO(pCtx)->numOfRes = 1;
}
