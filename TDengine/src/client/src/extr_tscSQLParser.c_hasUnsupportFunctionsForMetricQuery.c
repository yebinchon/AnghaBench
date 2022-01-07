
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


typedef scalar_t__ int32_t ;
struct TYPE_16__ {scalar_t__ functionId; } ;
struct TYPE_14__ {int numOfGroupCols; TYPE_2__* columnInfo; } ;
struct TYPE_12__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_15__ {TYPE_3__ groupbyExpr; TYPE_1__ fieldsInfo; } ;
struct TYPE_13__ {scalar_t__ colIdx; } ;
struct TYPE_11__ {int nStatus; } ;
typedef TYPE_4__ SSqlCmd ;


 int TSDB_FUNCSTATE_METRIC ;
 scalar_t__ TSDB_TBNAME_COLUMN_INDEX ;
 TYPE_10__* aAggs ;
 int setErrMsg (TYPE_4__*,char const*) ;
 scalar_t__ tscIsTWAQuery (TYPE_4__*) ;
 TYPE_5__* tscSqlExprGet (TYPE_4__*,scalar_t__) ;

bool hasUnsupportFunctionsForMetricQuery(SSqlCmd* pCmd) {
  const char* msg1 = "TWA not allowed to apply to super table directly";
  const char* msg2 = "functions not supported for super table";
  const char* msg3 = "TWA only support group by tbname for super table query";


  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    int32_t functionId = tscSqlExprGet(pCmd, i)->functionId;
    if ((aAggs[functionId].nStatus & TSDB_FUNCSTATE_METRIC) == 0) {
      return 1;
    }
  }

  if (tscIsTWAQuery(pCmd)) {
    if (pCmd->groupbyExpr.numOfGroupCols == 0) {
      setErrMsg(pCmd, msg1);
      return 1;
    }

    if (pCmd->groupbyExpr.numOfGroupCols != 1 || pCmd->groupbyExpr.columnInfo[0].colIdx != TSDB_TBNAME_COLUMN_INDEX) {
      setErrMsg(pCmd, msg3);
      return 1;
    }
  }

  return 0;
}
