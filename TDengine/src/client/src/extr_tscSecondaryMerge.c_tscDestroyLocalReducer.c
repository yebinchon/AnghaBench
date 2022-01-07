
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_12__ {TYPE_6__* pTags; TYPE_6__* prevValues; } ;
struct TYPE_18__ {size_t numOfBuffer; scalar_t__ numOfCompleted; TYPE_6__** pLocalDataSrc; int numOfVnode; int resColModel; int pDesc; int pExtMemBuffer; TYPE_6__* discardData; TYPE_6__* pFinalRes; TYPE_6__* pBufForInterpo; TYPE_6__* pLoserTree; TYPE_6__* pResInfo; TYPE_6__* pResultBuf; TYPE_6__* pTempBuffer; TYPE_6__* prevRowOfInput; TYPE_6__* pCtx; TYPE_1__ interpolationInfo; int status; } ;
struct TYPE_17__ {struct TYPE_17__* param; struct TYPE_17__* interResultBuf; int tag; } ;
struct TYPE_13__ {size_t numOfOutputCols; } ;
struct TYPE_16__ {TYPE_2__ fieldsInfo; } ;
struct TYPE_14__ {int * pLocalReducer; } ;
struct TYPE_15__ {TYPE_5__ cmd; TYPE_3__ res; } ;
typedef TYPE_3__ SSqlRes ;
typedef TYPE_4__ SSqlObj ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SQLFunctionCtx ;
typedef TYPE_7__ SLocalReducer ;


 size_t TSC_LOCALREDUCE_IN_PROGRESS ;
 int TSC_LOCALREDUCE_READY ;
 int TSC_LOCALREDUCE_TOBE_FREED ;
 scalar_t__ atomic_exchange_ptr (int **,int *) ;
 size_t atomic_val_compare_exchange_32 (int *,int ,int ) ;
 int free (TYPE_7__*) ;
 int tVariantDestroy (int *) ;
 int taosMsleep (int) ;
 int tfree (TYPE_6__*) ;
 int tscLocalReducerEnvDestroy (int ,int ,int ,int ) ;
 int tscTrace (char*,TYPE_4__*,...) ;

void tscDestroyLocalReducer(SSqlObj *pSql) {
  if (pSql == ((void*)0)) {
    return;
  }

  tscTrace("%p start to free local reducer", pSql);
  SSqlRes *pRes = &(pSql->res);
  if (pRes->pLocalReducer == ((void*)0)) {
    tscTrace("%p local reducer has been freed, abort", pSql);
    return;
  }

  SSqlCmd *pCmd = &pSql->cmd;


  SLocalReducer *pLocalReducer = (SLocalReducer*)atomic_exchange_ptr(&pRes->pLocalReducer, ((void*)0));
  if (pLocalReducer != ((void*)0)) {
    int32_t status = 0;
    while ((status = atomic_val_compare_exchange_32(&pLocalReducer->status, TSC_LOCALREDUCE_READY,
                                                    TSC_LOCALREDUCE_TOBE_FREED)) == TSC_LOCALREDUCE_IN_PROGRESS) {
      taosMsleep(100);
      tscTrace("%p waiting for delete procedure, status: %d", pSql, status);
    }

    tfree(pLocalReducer->interpolationInfo.prevValues);
    tfree(pLocalReducer->interpolationInfo.pTags);

    if (pLocalReducer->pCtx != ((void*)0)) {
      for(int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
        SQLFunctionCtx *pCtx = &pLocalReducer->pCtx[i];
        tVariantDestroy(&pCtx->tag);
      }

      tfree(pLocalReducer->pCtx);
    }


    tfree(pLocalReducer->prevRowOfInput);

    tfree(pLocalReducer->pTempBuffer);
    tfree(pLocalReducer->pResultBuf);

    if (pLocalReducer->pResInfo != ((void*)0)) {
      for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
        tfree(pLocalReducer->pResInfo[i].interResultBuf);
      }

      tfree(pLocalReducer->pResInfo);
    }

    if (pLocalReducer->pLoserTree) {
      tfree(pLocalReducer->pLoserTree->param);
      tfree(pLocalReducer->pLoserTree);
    }

    tfree(pLocalReducer->pBufForInterpo);

    tfree(pLocalReducer->pFinalRes);
    tfree(pLocalReducer->discardData);

    tscLocalReducerEnvDestroy(pLocalReducer->pExtMemBuffer, pLocalReducer->pDesc, pLocalReducer->resColModel,
                              pLocalReducer->numOfVnode);
    for (int32_t i = 0; i < pLocalReducer->numOfBuffer; ++i) {
      tfree(pLocalReducer->pLocalDataSrc[i]);
    }

    pLocalReducer->numOfBuffer = 0;
    pLocalReducer->numOfCompleted = 0;
    free(pLocalReducer);
  } else {
    tscTrace("%p already freed or another free function is invoked", pSql);
  }

  tscTrace("%p free local reducer finished", pSql);
}
