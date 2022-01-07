
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef size_t int32_t ;
struct TYPE_16__ {int numOfRows; } ;
struct TYPE_15__ {size_t numOfOutputCols; TYPE_2__* pSelectExpr; int pGroupbyExpr; } ;
struct TYPE_14__ {size_t usedIndex; int * pCtx; TYPE_5__* pResult; TYPE_4__* pQuery; } ;
struct TYPE_12__ {size_t functionId; } ;
struct TYPE_13__ {TYPE_1__ pBase; } ;
struct TYPE_11__ {int (* xFinalize ) (int *) ;} ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SOutputRes ;


 TYPE_10__* aAggs ;
 int getNumOfResult (TYPE_3__*) ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 int setGroupOutputBuffer (TYPE_3__*,TYPE_5__*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void doFinalizeResult(SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {

    for (int32_t i = 0; i < pRuntimeEnv->usedIndex; ++i) {
      SOutputRes *buf = &pRuntimeEnv->pResult[i];
      setGroupOutputBuffer(pRuntimeEnv, buf);

      for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
        aAggs[pQuery->pSelectExpr[j].pBase.functionId].xFinalize(&pRuntimeEnv->pCtx[j]);
      }





      buf->numOfRows = getNumOfResult(pRuntimeEnv);
    }

  } else {
    for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
      aAggs[pQuery->pSelectExpr[j].pBase.functionId].xFinalize(&pRuntimeEnv->pCtx[j]);
    }
  }
}
