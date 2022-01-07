
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_11__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_10__ {scalar_t__ numOfExprs; } ;
struct TYPE_13__ {scalar_t__ command; TYPE_2__ fieldsInfo; TYPE_1__ exprsInfo; } ;
struct TYPE_12__ {scalar_t__ functionId; } ;
typedef TYPE_3__ SSqlExpr ;
typedef TYPE_4__ SSqlCmd ;
typedef int SMeterMetaInfo ;


 scalar_t__ TSDB_FUNC_PRJ ;
 scalar_t__ TSDB_FUNC_TAG ;
 scalar_t__ TSDB_FUNC_TAGPRJ ;
 scalar_t__ TSDB_FUNC_TS ;
 scalar_t__ TSDB_SQL_RETRIEVE_EMPTY_RESULT ;
 int UTIL_METER_IS_METRIC (int *) ;
 int assert (int ) ;
 int * tscGetMeterMetaInfo (TYPE_4__*,int ) ;
 scalar_t__ tscQueryMetricTags (TYPE_4__*) ;
 TYPE_3__* tscSqlExprGet (TYPE_4__*,scalar_t__) ;

bool tscProjectionQueryOnMetric(SSqlCmd* pCmd) {
  assert(pCmd != ((void*)0));

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);





  if (pMeterMetaInfo == ((void*)0) || !UTIL_METER_IS_METRIC(pMeterMetaInfo) ||
      pCmd->command == TSDB_SQL_RETRIEVE_EMPTY_RESULT || pCmd->exprsInfo.numOfExprs == 0) {
    return 0;
  }


  if (tscQueryMetricTags(pCmd)) {
    return 0;
  }


  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    SSqlExpr* pExpr = tscSqlExprGet(pCmd, i);
    int32_t functionId = pExpr->functionId;
    if (functionId != TSDB_FUNC_PRJ && functionId != TSDB_FUNC_TAGPRJ &&
        functionId != TSDB_FUNC_TAG && functionId != TSDB_FUNC_TS) {
      return 0;
    }
  }

  return 1;
}
