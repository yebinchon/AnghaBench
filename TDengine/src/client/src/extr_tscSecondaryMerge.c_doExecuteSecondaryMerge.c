
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef size_t int32_t ;
struct TYPE_18__ {TYPE_4__* pCtx; } ;
struct TYPE_17__ {int currentStage; int inputType; int inputBytes; int aInputElemBuf; int tag; int * param; } ;
struct TYPE_14__ {size_t numOfOutputCols; } ;
struct TYPE_16__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_15__ {size_t functionId; int * param; } ;
struct TYPE_13__ {int (* distSecondaryMergeFunc ) (TYPE_4__*) ;int (* init ) (TYPE_4__*) ;} ;
typedef TYPE_2__ SSqlExpr ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SQLFunctionCtx ;
typedef TYPE_5__ SLocalReducer ;


 int SECONDARY_STAGE_MERGE ;
 size_t TSDB_FUNC_TAG ;
 size_t TSDB_FUNC_TAG_DUMMY ;
 size_t TSDB_FUNC_TS_DUMMY ;
 TYPE_12__* aAggs ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;
 int tVariantAssign (int *,int *) ;
 int tVariantCreateFromBinary (int *,int ,int ,int ) ;
 int tVariantDestroy (int *) ;
 TYPE_2__* tscSqlExprGet (TYPE_3__*,size_t) ;

__attribute__((used)) static void doExecuteSecondaryMerge(SSqlCmd* pCmd, SLocalReducer *pLocalReducer, bool needInit) {

  for(int32_t j = 0; j < pCmd->fieldsInfo.numOfOutputCols; ++j) {
    SSqlExpr * pExpr = tscSqlExprGet(pCmd, j);
    SQLFunctionCtx *pCtx = &pLocalReducer->pCtx[j];

    tVariantAssign(&pCtx->param[0], &pExpr->param[0]);


    if (pExpr->functionId == TSDB_FUNC_TAG_DUMMY || pExpr->functionId == TSDB_FUNC_TAG ||
        pExpr->functionId == TSDB_FUNC_TS_DUMMY) {
      tVariantDestroy(&pCtx->tag);
      tVariantCreateFromBinary(&pCtx->tag, pCtx->aInputElemBuf, pCtx->inputBytes, pCtx->inputType);
    }

    pCtx->currentStage = SECONDARY_STAGE_MERGE;

    if (needInit) {
      aAggs[pExpr->functionId].init(pCtx);
    }
  }

  for (int32_t j = 0; j < pCmd->fieldsInfo.numOfOutputCols; ++j) {
    int32_t functionId = tscSqlExprGet(pCmd, j)->functionId;
    if (functionId == TSDB_FUNC_TAG_DUMMY || functionId == TSDB_FUNC_TS_DUMMY) {
      continue;
    }

    aAggs[functionId].distSecondaryMergeFunc(&pLocalReducer->pCtx[j]);
  }
}
