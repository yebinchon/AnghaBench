
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ numOfRes; } ;
struct TYPE_9__ {scalar_t__ functionId; } ;
struct TYPE_7__ {scalar_t__ numOfExprs; } ;
struct TYPE_8__ {TYPE_1__ exprsInfo; } ;
typedef TYPE_2__ SSqlCmd ;
typedef int SQLFunctionCtx ;


 TYPE_6__* GET_RES_INFO (int *) ;
 scalar_t__ TSDB_FUNC_TAG ;
 scalar_t__ TSDB_FUNC_TAGPRJ ;
 scalar_t__ TSDB_FUNC_TS ;
 TYPE_3__* tscSqlExprGet (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int64_t getNumOfResultLocal(SSqlCmd *pCmd, SQLFunctionCtx *pCtx) {
  int64_t maxOutput = 0;

  for (int32_t j = 0; j < pCmd->exprsInfo.numOfExprs; ++j) {
    int32_t functionId = tscSqlExprGet(pCmd, j)->functionId;





    if (functionId == TSDB_FUNC_TS || functionId == TSDB_FUNC_TAG || functionId == TSDB_FUNC_TAGPRJ) {
      continue;
    }

    if (maxOutput < GET_RES_INFO(&pCtx[j])->numOfRes) {
      maxOutput = GET_RES_INFO(&pCtx[j])->numOfRes;
    }
  }
  return maxOutput;
}
