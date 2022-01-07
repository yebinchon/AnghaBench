
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_10__ {int nStatus; } ;
struct TYPE_9__ {int checkBufferInLoop; size_t numOfOutputCols; int pointsToRead; int pointsOffset; TYPE_1__* pSelectExpr; int pGroupbyExpr; } ;
struct TYPE_8__ {size_t functionId; } ;
struct TYPE_7__ {TYPE_2__ pBase; } ;
typedef TYPE_2__ SSqlFuncExprMsg ;
typedef TYPE_3__ SQuery ;


 int IS_MULTIOUTPUT (int ) ;
 size_t TSDB_FUNC_TS ;
 size_t TSDB_FUNC_TS_DUMMY ;
 TYPE_6__* aAggs ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 scalar_t__ isTopBottomQuery (TYPE_3__*) ;

__attribute__((used)) static void setScanLimitationByResultBuffer(SQuery *pQuery) {
  if (isTopBottomQuery(pQuery)) {
    pQuery->checkBufferInLoop = 0;
  } else if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    pQuery->checkBufferInLoop = 0;
  } else {
    bool hasMultioutput = 0;
    for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
      SSqlFuncExprMsg *pExprMsg = &pQuery->pSelectExpr[i].pBase;
      if (pExprMsg->functionId == TSDB_FUNC_TS || pExprMsg->functionId == TSDB_FUNC_TS_DUMMY) {
        continue;
      }

      hasMultioutput = IS_MULTIOUTPUT(aAggs[pExprMsg->functionId].nStatus);
      if (!hasMultioutput) {
        break;
      }
    }

    pQuery->checkBufferInLoop = hasMultioutput ? 1 : 0;
  }

  pQuery->pointsOffset = pQuery->pointsToRead;
}
