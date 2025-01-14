
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_11__ {int nStatus; } ;
struct TYPE_10__ {scalar_t__ functionId; } ;
struct TYPE_8__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_9__ {int nAggTimeInterval; TYPE_1__ fieldsInfo; } ;
typedef TYPE_2__ SSqlCmd ;


 int IS_STREAM_QUERY_VALID (int ) ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 TYPE_7__* aAggs ;
 int setErrMsg (TYPE_2__*,char const*) ;
 TYPE_4__* tscSqlExprGet (TYPE_2__*,scalar_t__) ;

int32_t validateSqlFunctionInStreamSql(SSqlCmd* pCmd) {
  const char* msg0 = "sample interval can not be less than 10ms.";
  const char* msg1 = "functions not allowed in select clause";

  if (pCmd->nAggTimeInterval != 0 && pCmd->nAggTimeInterval < 10) {
    setErrMsg(pCmd, msg0);
    return TSDB_CODE_INVALID_SQL;
  }

  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    int32_t functId = tscSqlExprGet(pCmd, i)->functionId;
    if (!IS_STREAM_QUERY_VALID(aAggs[functId].nStatus)) {
      setErrMsg(pCmd, msg1);
      return TSDB_CODE_INVALID_SQL;
    }
  }

  return TSDB_CODE_SUCCESS;
}
