
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int16_t ;
struct TYPE_17__ {scalar_t__ member_0; scalar_t__ member_1; } ;
struct TYPE_14__ {scalar_t__ numOfExprs; } ;
struct TYPE_16__ {TYPE_2__ exprsInfo; } ;
struct TYPE_13__ {scalar_t__ colId; int flag; } ;
struct TYPE_15__ {scalar_t__ functionId; TYPE_1__ colInfo; } ;
typedef TYPE_3__ SSqlExpr ;
typedef TYPE_4__ SSqlCmd ;
typedef int SColumnList ;
typedef TYPE_5__ SColumnIndex ;


 scalar_t__ PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 int TSDB_COL_NORMAL ;
 int TSDB_DATA_TYPE_TIMESTAMP ;
 int TSDB_KEYSIZE ;
 int getColumnList (int,scalar_t__,scalar_t__) ;
 int insertResultField (TYPE_4__*,int ,int *,int ,int ,char*) ;
 TYPE_3__* tscSqlExprGet (TYPE_4__*,int ) ;
 TYPE_3__* tscSqlExprInsert (TYPE_4__*,int ,scalar_t__,TYPE_5__*,int ,int ,int ) ;

void tscAddTimestampColumn(SSqlCmd* pCmd, int16_t functionId, int16_t tableIndex) {

  SSqlExpr* pExpr = ((void*)0);
  if (pCmd->exprsInfo.numOfExprs > 0) {
    pExpr = tscSqlExprGet(pCmd, 0);
  }

  if (pExpr == ((void*)0) || pExpr->colInfo.colId != PRIMARYKEY_TIMESTAMP_COL_INDEX || pExpr->functionId != functionId) {
    SColumnIndex index = {tableIndex, PRIMARYKEY_TIMESTAMP_COL_INDEX};

    pExpr = tscSqlExprInsert(pCmd, 0, functionId, &index, TSDB_DATA_TYPE_TIMESTAMP, TSDB_KEYSIZE, TSDB_KEYSIZE);
    pExpr->colInfo.flag = TSDB_COL_NORMAL;


    SColumnList ids = getColumnList(1, tableIndex, PRIMARYKEY_TIMESTAMP_COL_INDEX);

    insertResultField(pCmd, 0, &ids, TSDB_KEYSIZE, TSDB_DATA_TYPE_TIMESTAMP, "ts");
  }
}
