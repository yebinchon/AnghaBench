
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ numOfElems; } ;
struct TYPE_13__ {TYPE_5__* pHisto; } ;
struct TYPE_12__ {scalar_t__ currentStage; int outputBytes; int outputType; int aOutputBuf; TYPE_1__* param; } ;
struct TYPE_11__ {scalar_t__ hasResult; TYPE_4__* interResultBuf; } ;
struct TYPE_10__ {scalar_t__ nType; double i64Key; double dKey; } ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;
typedef TYPE_4__ SAPercentileInfo ;


 scalar_t__ DATA_SET_FLAG ;
 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 scalar_t__ SECONDARY_STAGE_MERGE ;
 scalar_t__ TSDB_DATA_TYPE_INT ;
 int assert (int) ;
 int free (double*) ;
 int memcpy (int ,double*,int) ;
 int resetResultInfo (TYPE_2__*) ;
 int setNull (int ,int ,int ) ;
 double* tHistogramUniform (TYPE_5__*,double*,int) ;

__attribute__((used)) static void apercentile_finalizer(SQLFunctionCtx *pCtx) {
  double v = (pCtx->param[0].nType == TSDB_DATA_TYPE_INT) ? pCtx->param[0].i64Key : pCtx->param[0].dKey;

  SResultInfo * pResInfo = GET_RES_INFO(pCtx);
  SAPercentileInfo *pOutput = pResInfo->interResultBuf;

  if (pCtx->currentStage == SECONDARY_STAGE_MERGE) {
    if (pResInfo->hasResult == DATA_SET_FLAG) {
      assert(pOutput->pHisto->numOfElems > 0);

      double ratio[] = {v};
      double *res = tHistogramUniform(pOutput->pHisto, ratio, 1);

      memcpy(pCtx->aOutputBuf, res, sizeof(double));
      free(res);
    } else {
      setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }
  } else {
    if (pOutput->pHisto->numOfElems > 0) {
      double ratio[] = {v};

      double *res = tHistogramUniform(pOutput->pHisto, ratio, 1);
      memcpy(pCtx->aOutputBuf, res, sizeof(double));
      free(res);
    } else {
      setNull(pCtx->aOutputBuf, pCtx->outputType, pCtx->outputBytes);
      return;
    }
  }

  resetResultInfo(pResInfo);
}
