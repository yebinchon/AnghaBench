
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;


typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_28__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_22__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_27__ {TYPE_2__ fieldsInfo; } ;
struct TYPE_24__ {int colIdx; } ;
struct TYPE_26__ {size_t functionId; scalar_t__ interResBytes; TYPE_4__ colInfo; TYPE_3__* param; } ;
struct TYPE_25__ {int bytes; int type; } ;
struct TYPE_23__ {int i64Key; } ;
struct TYPE_21__ {scalar_t__ numOfTags; } ;
struct TYPE_20__ {scalar_t__ stableFuncId; } ;
typedef TYPE_5__ TAOS_FIELD ;
typedef TYPE_6__ SSqlExpr ;
typedef TYPE_7__ SSqlCmd ;
typedef TYPE_8__ SMeterMetaInfo ;


 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_FUNC_FIRST_DST ;
 scalar_t__ TSDB_FUNC_LAST_DST ;
 scalar_t__ TSDB_FUNC_SUM ;
 scalar_t__ TSDB_FUNC_TWA ;
 int UTIL_METER_IS_METRIC (TYPE_8__*) ;
 TYPE_18__* aAggs ;
 int assert (int) ;
 scalar_t__ getResultDataInfo (int ,int ,scalar_t__,int ,scalar_t__*,scalar_t__*,scalar_t__*,int ,int) ;
 TYPE_5__* tscFieldInfoGetField (TYPE_7__*,scalar_t__) ;
 int tscFieldInfoUpdateOffset (TYPE_7__*) ;
 TYPE_8__* tscGetMeterMetaInfo (TYPE_7__*,int ) ;
 TYPE_6__* tscSqlExprGet (TYPE_7__*,scalar_t__) ;
 int tscSqlExprUpdate (TYPE_7__*,scalar_t__,scalar_t__,int ,int ,scalar_t__) ;

int32_t tscTansformSQLFunctionForMetricQuery(SSqlCmd* pCmd) {
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  if (pMeterMetaInfo->pMeterMeta == ((void*)0) || !UTIL_METER_IS_METRIC(pMeterMetaInfo)) {
    return TSDB_CODE_INVALID_SQL;
  }

  assert(pMeterMetaInfo->pMeterMeta->numOfTags >= 0);

  int16_t bytes = 0;
  int16_t type = 0;
  int16_t intermediateBytes = 0;

  for (int32_t k = 0; k < pCmd->fieldsInfo.numOfOutputCols; ++k) {
    SSqlExpr* pExpr = tscSqlExprGet(pCmd, k);
    TAOS_FIELD* pField = tscFieldInfoGetField(pCmd, k);

    int16_t functionId = aAggs[pExpr->functionId].stableFuncId;

    if ((functionId >= TSDB_FUNC_SUM && functionId <= TSDB_FUNC_TWA) ||
        (functionId >= TSDB_FUNC_FIRST_DST && functionId <= TSDB_FUNC_LAST_DST)) {
      if (getResultDataInfo(pField->type, pField->bytes, functionId, pExpr->param[0].i64Key, &type, &bytes,
                            &intermediateBytes, 0, 1) != TSDB_CODE_SUCCESS) {
        return TSDB_CODE_INVALID_SQL;
      }

      tscSqlExprUpdate(pCmd, k, functionId, pExpr->colInfo.colIdx, TSDB_DATA_TYPE_BINARY, bytes);

      pExpr->interResBytes = intermediateBytes;
    }
  }

  tscFieldInfoUpdateOffset(pCmd);
  return TSDB_CODE_SUCCESS;
}
