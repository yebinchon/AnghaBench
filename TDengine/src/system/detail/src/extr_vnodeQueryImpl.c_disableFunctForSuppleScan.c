
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
typedef struct TYPE_12__ TYPE_11__ ;


typedef size_t int32_t ;
struct TYPE_20__ {TYPE_1__* resultInfo; } ;
struct TYPE_16__ {int order; } ;
struct TYPE_19__ {size_t numOfOutputCols; TYPE_4__ order; TYPE_3__* pSelectExpr; int pGroupbyExpr; } ;
struct TYPE_18__ {size_t usedIndex; TYPE_11__* pCtx; TYPE_8__* pResult; TYPE_7__* pQuery; } ;
struct TYPE_17__ {int complete; } ;
struct TYPE_14__ {size_t functionId; } ;
struct TYPE_15__ {TYPE_2__ pBase; } ;
struct TYPE_13__ {int complete; } ;
struct TYPE_12__ {int order; } ;
typedef TYPE_5__ SResultInfo ;
typedef TYPE_6__ SQueryRuntimeEnv ;
typedef TYPE_7__ SQuery ;
typedef TYPE_8__ SOutputRes ;


 TYPE_5__* GET_RES_INFO (TYPE_11__*) ;
 size_t TSDB_FUNC_FIRST ;
 size_t TSDB_FUNC_FIRST_DST ;
 size_t TSDB_FUNC_LAST ;
 size_t TSDB_FUNC_LAST_DST ;
 size_t TSDB_FUNC_TAG ;
 size_t TSDB_FUNC_TS ;
 size_t TSQL_SO_ASC ;
 size_t TSQL_SO_DESC ;
 scalar_t__ isGroupbyNormalCol (int ) ;

void disableFunctForSuppleScan(SQueryRuntimeEnv *pRuntimeEnv, int32_t order) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      pRuntimeEnv->pCtx[i].order = (pRuntimeEnv->pCtx[i].order) ^ 1;
    }

    for (int32_t i = 0; i < pRuntimeEnv->usedIndex; ++i) {
      SOutputRes *buf = &pRuntimeEnv->pResult[i];


      for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
        int32_t functId = pQuery->pSelectExpr[j].pBase.functionId;

        if (((functId == TSDB_FUNC_FIRST || functId == TSDB_FUNC_FIRST_DST) && order == TSQL_SO_DESC) ||
            ((functId == TSDB_FUNC_LAST || functId == TSDB_FUNC_LAST_DST) && order == TSQL_SO_ASC)) {
          buf->resultInfo[j].complete = 0;
        } else if (functId != TSDB_FUNC_TS && functId != TSDB_FUNC_TAG) {
          buf->resultInfo[j].complete = 1;
        }
      }
    }
  } else {
    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      pRuntimeEnv->pCtx[i].order = (pRuntimeEnv->pCtx[i].order) ^ 1;
      int32_t functId = pQuery->pSelectExpr[i].pBase.functionId;

      SResultInfo *pResInfo = GET_RES_INFO(&pRuntimeEnv->pCtx[i]);
      if (((functId == TSDB_FUNC_FIRST || functId == TSDB_FUNC_FIRST_DST) && order == TSQL_SO_DESC) ||
          ((functId == TSDB_FUNC_LAST || functId == TSDB_FUNC_LAST_DST) && order == TSQL_SO_ASC)) {
        pResInfo->complete = 0;

      } else if (functId != TSDB_FUNC_TS && functId != TSDB_FUNC_TAG) {
        pResInfo->complete = 1;
      }
    }
  }

  pQuery->order.order = pQuery->order.order ^ 1;
}
