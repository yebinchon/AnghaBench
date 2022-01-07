
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ currentStage; scalar_t__ inputType; scalar_t__ aOutputBuf; int outputBytes; int outputType; TYPE_1__* param; } ;
struct TYPE_11__ {scalar_t__ hasResult; TYPE_2__* interResultBuf; } ;
struct TYPE_10__ {scalar_t__ hasResult; double max; double min; } ;
struct TYPE_9__ {double dKey; } ;
typedef TYPE_2__ SSpreadInfo ;
typedef TYPE_3__ SResultInfo ;
typedef TYPE_4__ SQLFunctionCtx ;


 scalar_t__ DATA_SET_FLAG ;
 TYPE_3__* GET_RES_INFO (TYPE_4__*) ;
 scalar_t__ SECONDARY_STAGE_MERGE ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_DOUBLE ;
 scalar_t__ TSDB_DATA_TYPE_TIMESTAMP ;
 scalar_t__ TSDB_DATA_TYPE_TINYINT ;
 int assert (int) ;
 int resetResultInfo (TYPE_3__*) ;
 int setNull (scalar_t__,int ,int ) ;

void spread_function_finalizer(SQLFunctionCtx *pCtx) {




  SResultInfo *pResInfo = GET_RES_INFO(pCtx);

  if (pCtx->currentStage == SECONDARY_STAGE_MERGE) {
    assert(pCtx->inputType == TSDB_DATA_TYPE_BINARY);

    if (pResInfo->hasResult != DATA_SET_FLAG) {
      setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }

    *(double *)pCtx->aOutputBuf = pCtx->param[3].dKey - pCtx->param[0].dKey;
  } else {
    assert((pCtx->inputType >= TSDB_DATA_TYPE_TINYINT && pCtx->inputType <= TSDB_DATA_TYPE_DOUBLE) ||
           (pCtx->inputType == TSDB_DATA_TYPE_TIMESTAMP));

    SSpreadInfo *pInfo = GET_RES_INFO(pCtx)->interResultBuf;
    if (pInfo->hasResult != DATA_SET_FLAG) {
      setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }

    *(double *)pCtx->aOutputBuf = pInfo->max - pInfo->min;
  }


  resetResultInfo(GET_RES_INFO(pCtx));
}
