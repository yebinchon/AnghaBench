
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_11__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_14__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_13__ {scalar_t__ functionId; int resType; int resBytes; } ;
struct TYPE_12__ {int type; int bytes; } ;
typedef TYPE_2__ TAOS_FIELD ;
typedef TYPE_3__ SSqlExpr ;
typedef TYPE_4__ SSqlCmd ;
typedef int SMeterMetaInfo ;


 scalar_t__ TSDB_FUNC_FIRST_DST ;
 scalar_t__ TSDB_FUNC_LAST_DST ;
 scalar_t__ TSDB_FUNC_MAX ;
 scalar_t__ TSDB_FUNC_SUM ;
 int UTIL_METER_IS_METRIC (int *) ;
 TYPE_2__* tscFieldInfoGetField (TYPE_4__*,scalar_t__) ;
 int * tscGetMeterMetaInfo (TYPE_4__*,int ) ;
 TYPE_3__* tscSqlExprGet (TYPE_4__*,scalar_t__) ;

void tscRestoreSQLFunctionForMetricQuery(SSqlCmd* pCmd) {
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  if (!UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
    return;
  }

  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    SSqlExpr* pExpr = tscSqlExprGet(pCmd, i);
    TAOS_FIELD* pField = tscFieldInfoGetField(pCmd, i);

    if ((pExpr->functionId >= TSDB_FUNC_FIRST_DST && pExpr->functionId <= TSDB_FUNC_LAST_DST) ||
        (pExpr->functionId >= TSDB_FUNC_SUM && pExpr->functionId <= TSDB_FUNC_MAX)) {
      pExpr->resBytes = pField->bytes;
      pExpr->resType = pField->type;
    }
  }
}
