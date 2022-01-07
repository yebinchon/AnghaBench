
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_14__ {int nStatus; } ;
struct TYPE_11__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_13__ {TYPE_2__ fieldsInfo; } ;
struct TYPE_10__ {scalar_t__ colId; } ;
struct TYPE_12__ {scalar_t__ functionId; TYPE_1__ colInfo; } ;
typedef TYPE_3__ SSqlExpr ;
typedef TYPE_4__ SSqlCmd ;


 scalar_t__ PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_FUNCSTATE_SELECTIVITY ;
 scalar_t__ TSDB_FUNC_ARITHM ;
 scalar_t__ TSDB_FUNC_DIFF ;
 scalar_t__ TSDB_FUNC_PRJ ;
 TYPE_9__* aAggs ;
 int setErrMsg (TYPE_4__*,char const*) ;
 TYPE_3__* tscSqlExprGet (TYPE_4__*,scalar_t__) ;

int32_t validateFunctionsInIntervalOrGroupbyQuery(SSqlCmd* pCmd) {
  bool isProjectionFunction = 0;
  const char* msg1 = "column projection is not compatible with interval";
  const char* msg2 = "interval not allowed for tag queries";


  for (int32_t k = 0; k < pCmd->fieldsInfo.numOfOutputCols; ++k) {
    SSqlExpr* pExpr = tscSqlExprGet(pCmd, k);


    if (pExpr->functionId == TSDB_FUNC_PRJ && pExpr->colInfo.colId == PRIMARYKEY_TIMESTAMP_COL_INDEX) {
      bool hasSelectivity = 0;
      for(int32_t j = 0; j < pCmd->fieldsInfo.numOfOutputCols; ++j) {
        SSqlExpr* pEx = tscSqlExprGet(pCmd, j);
        if ((aAggs[pEx->functionId].nStatus & TSDB_FUNCSTATE_SELECTIVITY) == TSDB_FUNCSTATE_SELECTIVITY) {
          hasSelectivity = 1;
          break;
        }
      }

      if (hasSelectivity) {
        continue;
      }
    }

    if (pExpr->functionId == TSDB_FUNC_PRJ || pExpr->functionId == TSDB_FUNC_DIFF ||
       pExpr->functionId == TSDB_FUNC_ARITHM) {
      isProjectionFunction = 1;
    }
  }

  if (isProjectionFunction) {
    setErrMsg(pCmd, msg1);
  }

  return isProjectionFunction == 1 ? TSDB_CODE_INVALID_SQL : TSDB_CODE_SUCCESS;
}
