
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_17__ {TYPE_3__* pMeterMeta; } ;
struct TYPE_16__ {scalar_t__ member_0; scalar_t__ member_1; } ;
struct TYPE_15__ {scalar_t__ numOfColumns; } ;
struct TYPE_14__ {int bytes; int type; } ;
struct TYPE_13__ {int type; } ;
typedef int SSqlExpr ;
typedef TYPE_1__ SSqlCmd ;
typedef TYPE_2__ SSchema ;
typedef TYPE_3__ SMeterMeta ;
typedef TYPE_4__ SColumnIndex ;


 scalar_t__ TSDB_FUNC_PRJ ;
 scalar_t__ TSDB_FUNC_TAGPRJ ;
 int TSDB_QUERY_TYPE_PROJECTION_QUERY ;
 int TSDB_QUERY_TYPE_STABLE_QUERY ;
 int addRequiredTagColumn (TYPE_1__*,scalar_t__,scalar_t__) ;
 TYPE_2__* tsGetColumnSchema (TYPE_3__*,scalar_t__) ;
 TYPE_7__* tscGetMeterMetaInfo (TYPE_1__*,scalar_t__) ;
 int * tscSqlExprInsert (TYPE_1__*,scalar_t__,scalar_t__,TYPE_4__*,int ,int ,int ) ;

SSqlExpr* doAddProjectCol(SSqlCmd* pCmd, int32_t outputIndex, int32_t colIdx, int32_t tableIndex) {
  SMeterMeta* pMeterMeta = tscGetMeterMetaInfo(pCmd, tableIndex)->pMeterMeta;

  SSchema* pSchema = tsGetColumnSchema(pMeterMeta, colIdx);
  int32_t numOfCols = pMeterMeta->numOfColumns;

  int16_t functionId = (int16_t)((colIdx >= numOfCols) ? TSDB_FUNC_TAGPRJ : TSDB_FUNC_PRJ);

  if (functionId == TSDB_FUNC_TAGPRJ) {
    addRequiredTagColumn(pCmd, colIdx - numOfCols, tableIndex);
    pCmd->type = TSDB_QUERY_TYPE_STABLE_QUERY;
  } else {
    pCmd->type = TSDB_QUERY_TYPE_PROJECTION_QUERY;
  }

  SColumnIndex index = {tableIndex, colIdx};
  SSqlExpr* pExpr =
      tscSqlExprInsert(pCmd, outputIndex, functionId, &index, pSchema->type, pSchema->bytes, pSchema->bytes);

  return pExpr;
}
