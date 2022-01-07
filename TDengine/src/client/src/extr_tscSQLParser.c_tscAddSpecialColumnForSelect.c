
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
struct TYPE_16__ {int tableIndex; int columnIndex; } ;
struct TYPE_15__ {scalar_t__ num; } ;
struct TYPE_14__ {int name; int type; int bytes; } ;
struct TYPE_12__ {int flag; } ;
struct TYPE_13__ {TYPE_1__ colInfo; } ;
typedef TYPE_2__ SSqlExpr ;
typedef int SSqlCmd ;
typedef TYPE_3__ SSchema ;
typedef TYPE_4__ SColumnList ;
typedef TYPE_5__ SColumnIndex ;


 scalar_t__ TSDB_COL_IS_TAG (int ) ;
 int addRequiredTagColumn (int *,int ,int ) ;
 TYPE_4__ getColumnList (int,int ,int ) ;
 int insertResultField (int *,int ,TYPE_4__*,int ,int ,int ) ;
 TYPE_2__* tscSqlExprInsert (int *,int ,int ,TYPE_5__*,int ,int ,int ) ;

void tscAddSpecialColumnForSelect(SSqlCmd* pCmd, int32_t outputColIndex, int16_t functionId, SColumnIndex* pIndex,
                                  SSchema* pColSchema, int16_t flag) {
  SSqlExpr* pExpr = tscSqlExprInsert(pCmd, outputColIndex, functionId, pIndex, pColSchema->type, pColSchema->bytes,
                                     pColSchema->bytes);

  SColumnList ids = getColumnList(1, pIndex->tableIndex, pIndex->columnIndex);
  if (TSDB_COL_IS_TAG(flag)) {
    ids.num = 0;
  }

  insertResultField(pCmd, outputColIndex, &ids, pColSchema->bytes, pColSchema->type, pColSchema->name);

  pExpr->colInfo.flag = flag;
  if (TSDB_COL_IS_TAG(flag)) {
    addRequiredTagColumn(pCmd, pIndex->columnIndex, pIndex->tableIndex);
  }
}
