
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef size_t int32_t ;
struct TYPE_24__ {TYPE_1__* resultInfo; } ;
struct TYPE_23__ {int hasPrevRow; TYPE_2__* pResultBuf; TYPE_9__* pCtx; } ;
struct TYPE_20__ {size_t numOfOutputCols; } ;
struct TYPE_22__ {TYPE_3__ fieldsInfo; } ;
struct TYPE_21__ {size_t functionId; } ;
struct TYPE_19__ {int numOfElems; } ;
struct TYPE_18__ {int initialized; } ;
struct TYPE_17__ {int (* xFinalize ) (TYPE_9__*) ;} ;
typedef TYPE_4__ SSqlExpr ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SLocalReducer ;


 TYPE_16__* aAggs ;
 int fillMultiRowsOfTagsVal (TYPE_5__*,size_t,TYPE_6__*) ;
 int getNumOfResultLocal (TYPE_5__*,TYPE_9__*) ;
 int stub1 (TYPE_9__*) ;
 TYPE_4__* tscSqlExprGet (TYPE_5__*,size_t) ;

int32_t finalizeRes(SSqlCmd *pCmd, SLocalReducer *pLocalReducer) {
  for (int32_t k = 0; k < pCmd->fieldsInfo.numOfOutputCols; ++k) {
    SSqlExpr *pExpr = tscSqlExprGet(pCmd, k);
    aAggs[pExpr->functionId].xFinalize(&pLocalReducer->pCtx[k]);


    pLocalReducer->pCtx[k].resultInfo->initialized = 0;
  }

  pLocalReducer->hasPrevRow = 0;

  int32_t numOfRes = (int32_t)getNumOfResultLocal(pCmd, pLocalReducer->pCtx);
  pLocalReducer->pResultBuf->numOfElems += numOfRes;

  fillMultiRowsOfTagsVal(pCmd, numOfRes, pLocalReducer);
  return numOfRes;
}
