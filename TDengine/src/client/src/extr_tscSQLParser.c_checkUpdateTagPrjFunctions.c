
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_13__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_15__ {TYPE_2__ fieldsInfo; } ;
struct TYPE_12__ {scalar_t__ colId; } ;
struct TYPE_14__ {scalar_t__ functionId; TYPE_1__ colInfo; } ;
struct TYPE_11__ {int nStatus; } ;
typedef TYPE_3__ SSqlExpr ;
typedef TYPE_4__ SSqlCmd ;


 scalar_t__ PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_FUNCSTATE_SELECTIVITY ;
 scalar_t__ TSDB_FUNC_LAST_ROW ;
 scalar_t__ TSDB_FUNC_PRJ ;
 scalar_t__ TSDB_FUNC_TAGPRJ ;
 scalar_t__ TSDB_FUNC_TS ;
 TYPE_10__* aAggs ;
 int doUpdateSqlFunctionForTagPrj (TYPE_4__*) ;
 int setErrMsg (TYPE_4__*,char const*) ;
 TYPE_3__* tscSqlExprGet (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static int32_t checkUpdateTagPrjFunctions(SSqlCmd* pCmd) {
  const char* msg1 = "only one selectivity function allowed in presence of tags function";
  const char* msg2 = "functions not allowed";

  bool tagColExists = 0;
  int16_t numOfTimestamp = 0;
  int16_t numOfSelectivity = 0;
  int16_t numOfAggregation = 0;

  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    SSqlExpr* pExpr = tscSqlExprGet(pCmd, i);
    if (pExpr->functionId == TSDB_FUNC_TAGPRJ ||
        (pExpr->functionId == TSDB_FUNC_PRJ && pExpr->colInfo.colId == PRIMARYKEY_TIMESTAMP_COL_INDEX)) {
      tagColExists = 1;
      break;
    }
  }

  if (tagColExists) {
    for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
      int16_t functionId = tscSqlExprGet(pCmd, i)->functionId;
      if (functionId == TSDB_FUNC_TAGPRJ || functionId == TSDB_FUNC_PRJ || functionId == TSDB_FUNC_TS) {
        continue;
      }

      if ((aAggs[functionId].nStatus & TSDB_FUNCSTATE_SELECTIVITY) != 0) {
        numOfSelectivity++;
      } else {
        numOfAggregation++;
      }
    }



    if (numOfAggregation > 0) {
      setErrMsg(pCmd, msg1);
      return TSDB_CODE_INVALID_SQL;
    }




    if (numOfSelectivity == 1) {
      doUpdateSqlFunctionForTagPrj(pCmd);
    } else if (numOfSelectivity > 1) {




      for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
        int16_t functionId = tscSqlExprGet(pCmd, i)->functionId;
        if (functionId == TSDB_FUNC_TAGPRJ) {
          continue;
        }

        if (((aAggs[functionId].nStatus & TSDB_FUNCSTATE_SELECTIVITY) != 0) && (functionId != TSDB_FUNC_LAST_ROW)) {
          setErrMsg(pCmd, msg1);
          return TSDB_CODE_INVALID_SQL;
        }
      }

      doUpdateSqlFunctionForTagPrj(pCmd);
    }
  }

  return TSDB_CODE_SUCCESS;
}
