
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_19__ {TYPE_6__* pCtx; } ;
struct TYPE_18__ {size_t aOutputBuf; size_t outputBytes; char* ptsOutputBuf; } ;
struct TYPE_13__ {size_t numOfOutputCols; } ;
struct TYPE_17__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_16__ {scalar_t__ functionId; } ;
struct TYPE_14__ {TYPE_7__* pLocalReducer; } ;
struct TYPE_15__ {TYPE_2__ res; TYPE_5__ cmd; } ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SSqlExpr ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SQLFunctionCtx ;
typedef TYPE_7__ SLocalReducer ;


 scalar_t__ TSDB_FUNC_BOTTOM ;
 scalar_t__ TSDB_FUNC_TOP ;
 size_t TSDB_KEYSIZE ;
 int doExecuteSecondaryMerge (TYPE_5__*,TYPE_7__*,int) ;
 TYPE_4__* tscSqlExprGet (TYPE_5__*,size_t) ;

__attribute__((used)) static void doMergeWithPrevRows(SSqlObj *pSql, int32_t numOfRes) {
  SSqlCmd * pCmd = &pSql->cmd;
  SSqlRes * pRes = &pSql->res;
  SLocalReducer *pLocalReducer = pRes->pLocalReducer;

  for (int32_t k = 0; k < pCmd->fieldsInfo.numOfOutputCols; ++k) {
    SSqlExpr *pExpr = tscSqlExprGet(pCmd, k);
    SQLFunctionCtx *pCtx = &pLocalReducer->pCtx[k];

    pCtx->aOutputBuf += pCtx->outputBytes * numOfRes;


    if (pExpr->functionId == TSDB_FUNC_TOP || pExpr->functionId == TSDB_FUNC_BOTTOM) {
      pCtx->ptsOutputBuf = ((char *)pCtx->ptsOutputBuf + TSDB_KEYSIZE * numOfRes);
    }
  }

  doExecuteSecondaryMerge(pCmd, pLocalReducer, 1);
}
