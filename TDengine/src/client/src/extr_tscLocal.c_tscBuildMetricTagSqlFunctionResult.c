
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef scalar_t__ int32_t ;
struct TYPE_27__ {int numOfMeters; } ;
struct TYPE_20__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_26__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_21__ {int colIdx; } ;
struct TYPE_25__ {scalar_t__ functionId; TYPE_2__ colInfo; } ;
struct TYPE_23__ {scalar_t__ data; } ;
struct TYPE_24__ {TYPE_4__ res; TYPE_7__ cmd; } ;
struct TYPE_22__ {scalar_t__ bytes; } ;
struct TYPE_19__ {TYPE_8__* pMetricMeta; } ;
typedef TYPE_3__ TAOS_FIELD ;
typedef TYPE_4__ SSqlRes ;
typedef TYPE_5__ SSqlObj ;
typedef TYPE_6__ SSqlExpr ;
typedef TYPE_7__ SSqlCmd ;
typedef TYPE_8__ SMetricMeta ;


 scalar_t__ TSDB_FUNC_COUNT ;
 int memcpy (scalar_t__,int *,int) ;
 int tscError (char*) ;
 TYPE_3__* tscFieldInfoGetField (TYPE_7__*,scalar_t__) ;
 scalar_t__ tscFieldInfoGetOffset (TYPE_7__*,scalar_t__) ;
 TYPE_13__* tscGetMeterMetaInfo (TYPE_7__*,int ) ;
 scalar_t__ tscGetResRowLength (TYPE_7__*) ;
 int tscInitResObjForLocalQuery (TYPE_5__*,scalar_t__,scalar_t__) ;
 TYPE_6__* tscSqlExprGet (TYPE_7__*,scalar_t__) ;

__attribute__((used)) static int tscBuildMetricTagSqlFunctionResult(SSqlObj *pSql) {
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  SMetricMeta *pMetricMeta = tscGetMeterMetaInfo(pCmd, 0)->pMetricMeta;
  int32_t totalNumOfResults = 1;
  int32_t rowLen = tscGetResRowLength(pCmd);

  tscInitResObjForLocalQuery(pSql, totalNumOfResults, rowLen);

  int32_t rowIdx = 0;
  for (int32_t i = 0; i < totalNumOfResults; ++i) {
    for (int32_t k = 0; k < pCmd->fieldsInfo.numOfOutputCols; ++k) {
      SSqlExpr *pExpr = tscSqlExprGet(pCmd, i);

      if (pExpr->colInfo.colIdx == -1 && pExpr->functionId == TSDB_FUNC_COUNT) {
        TAOS_FIELD *pField = tscFieldInfoGetField(pCmd, k);

        memcpy(pRes->data + tscFieldInfoGetOffset(pCmd, i) * totalNumOfResults + pField->bytes * rowIdx,
               &pMetricMeta->numOfMeters, sizeof(pMetricMeta->numOfMeters));
      } else {
        tscError("not support operations");
        continue;
      }
    }
    rowIdx++;
  }

  return 0;
}
