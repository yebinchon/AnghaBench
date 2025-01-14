
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_16__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef size_t int32_t ;
struct TYPE_31__ {int num; TYPE_10__* ids; int member_0; } ;
struct TYPE_30__ {int pMeterMeta; } ;
struct TYPE_29__ {int name; int type; int bytes; } ;
struct TYPE_22__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_24__ {TYPE_1__* columnInfo; } ;
struct TYPE_28__ {TYPE_16__ fieldsInfo; TYPE_2__ groupbyExpr; } ;
struct TYPE_25__ {int flag; } ;
struct TYPE_27__ {int numOfParams; TYPE_4__* param; TYPE_3__ colInfo; } ;
struct TYPE_26__ {int i64Key; } ;
struct TYPE_23__ {size_t colIdx; } ;
struct TYPE_21__ {size_t columnIndex; int tableIndex; } ;
typedef TYPE_5__ SSqlExpr ;
typedef TYPE_6__ SSqlCmd ;
typedef TYPE_7__ SSchema ;
typedef TYPE_8__ SMeterMetaInfo ;
typedef TYPE_9__ SColumnList ;
typedef TYPE_10__ SColumnIndex ;


 int TSDB_COL_NORMAL ;
 int TSDB_FUNC_PRJ ;
 int insertResultField (TYPE_6__*,scalar_t__,TYPE_9__*,int ,int ,int ) ;
 TYPE_7__* tsGetColumnSchema (int ,size_t) ;
 int tscFieldInfoUpdateVisible (TYPE_16__*,scalar_t__,int) ;
 TYPE_8__* tscGetMeterMetaInfo (TYPE_6__*,int ) ;
 TYPE_5__* tscSqlExprInsert (TYPE_6__*,scalar_t__,int ,TYPE_10__*,int ,int ,int ) ;

void doAddGroupColumnForSubquery(SSqlCmd* pCmd, int32_t tagIndex) {
  int32_t index = pCmd->groupbyExpr.columnInfo[tagIndex].colIdx;

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  SSchema* pSchema = tsGetColumnSchema(pMeterMetaInfo->pMeterMeta, index);
  SColumnIndex colIndex = {.tableIndex = 0, .columnIndex = index};

  SSqlExpr* pExpr = tscSqlExprInsert(pCmd, pCmd->fieldsInfo.numOfOutputCols, TSDB_FUNC_PRJ, &colIndex, pSchema->type,
                                     pSchema->bytes, pSchema->bytes);

  pExpr->colInfo.flag = TSDB_COL_NORMAL;
  pExpr->param[0].i64Key = 1;
  pExpr->numOfParams = 1;


  SColumnList list = {0};
  list.num = 1;
  list.ids[0] = colIndex;

  insertResultField(pCmd, pCmd->fieldsInfo.numOfOutputCols, &list, pSchema->bytes, pSchema->type, pSchema->name);
  tscFieldInfoUpdateVisible(&pCmd->fieldsInfo, pCmd->fieldsInfo.numOfOutputCols - 1, 0);
}
