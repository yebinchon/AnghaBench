
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_12__ {int nStatus; } ;
struct TYPE_11__ {scalar_t__ nAggTimeInterval; size_t numOfOutputCols; TYPE_1__* pSelectExpr; int pGroupbyExpr; } ;
struct TYPE_9__ {scalar_t__ colIdx; } ;
struct TYPE_10__ {size_t functionId; int numOfParams; TYPE_2__ colInfo; } ;
struct TYPE_8__ {TYPE_3__ pBase; } ;
typedef TYPE_3__ SSqlFuncExprMsg ;
typedef TYPE_4__ SQuery ;


 int IS_MULTIOUTPUT (int ) ;
 scalar_t__ PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 size_t TSDB_FUNC_PRJ ;
 size_t TSDB_FUNC_TS ;
 size_t TSDB_FUNC_TS_DUMMY ;
 TYPE_7__* aAggs ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 scalar_t__ isTopBottomQuery (TYPE_4__*) ;

bool isFixedOutputQuery(SQuery *pQuery) {
  if (pQuery->nAggTimeInterval != 0) {
    return 0;
  }


  if (isTopBottomQuery(pQuery) || isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    return 1;
  }

  for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
    SSqlFuncExprMsg *pExprMsg = &pQuery->pSelectExpr[i].pBase;


    if (i == 0 && pExprMsg->functionId == TSDB_FUNC_PRJ && pExprMsg->numOfParams == 1 &&
        pExprMsg->colInfo.colIdx == PRIMARYKEY_TIMESTAMP_COL_INDEX) {
      continue;
    }

    if (pExprMsg->functionId == TSDB_FUNC_TS || pExprMsg->functionId == TSDB_FUNC_TS_DUMMY) {
      continue;
    }






    if (!IS_MULTIOUTPUT(aAggs[pExprMsg->functionId].nStatus)) {
      return 1;
    }
  }

  return 0;
}
