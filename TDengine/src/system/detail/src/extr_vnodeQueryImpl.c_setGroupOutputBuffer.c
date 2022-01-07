
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_20__ {int * resultInfo; TYPE_1__** result; } ;
struct TYPE_19__ {int outputBytes; int * resultInfo; scalar_t__ aOutputBuf; scalar_t__ ptsOutputBuf; } ;
struct TYPE_18__ {size_t numOfOutputCols; int pGroupbyExpr; TYPE_3__* pSelectExpr; } ;
struct TYPE_17__ {TYPE_7__* pCtx; TYPE_6__* pQuery; } ;
struct TYPE_16__ {int superTableQ; } ;
struct TYPE_14__ {size_t functionId; } ;
struct TYPE_15__ {TYPE_2__ pBase; } ;
struct TYPE_13__ {int numOfElems; scalar_t__ data; } ;
typedef TYPE_4__ SResultInfo ;
typedef TYPE_5__ SQueryRuntimeEnv ;
typedef TYPE_6__ SQuery ;
typedef TYPE_7__ SQLFunctionCtx ;
typedef TYPE_8__ SOutputRes ;


 TYPE_4__* GET_RES_INFO (TYPE_7__*) ;
 size_t TSDB_FUNC_BOTTOM ;
 size_t TSDB_FUNC_DIFF ;
 size_t TSDB_FUNC_TOP ;
 int assert (int) ;
 int isGroupbyNormalCol (int ) ;

__attribute__((used)) static void setGroupOutputBuffer(SQueryRuntimeEnv *pRuntimeEnv, SOutputRes *pResult) {
  SQuery *pQuery = pRuntimeEnv->pQuery;


  for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
    assert(pResult->result[i]->numOfElems == 0 || pResult->result[i]->numOfElems == 1);

    SQLFunctionCtx *pCtx = &pRuntimeEnv->pCtx[i];
    pCtx->aOutputBuf = pResult->result[i]->data + pCtx->outputBytes * pResult->result[i]->numOfElems;

    int32_t functionId = pQuery->pSelectExpr[i].pBase.functionId;
    if (functionId == TSDB_FUNC_TOP || functionId == TSDB_FUNC_BOTTOM || functionId == TSDB_FUNC_DIFF) {
      pCtx->ptsOutputBuf = pRuntimeEnv->pCtx[0].aOutputBuf;
    }





    pCtx->resultInfo = &pResult->resultInfo[i];


    SResultInfo *pResInfo = GET_RES_INFO(pCtx);
    if (!isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
      pResInfo->superTableQ = 1;
    }
  }
}
