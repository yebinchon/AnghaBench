
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char* aliasName; } ;
typedef TYPE_1__ tSQLExprItem ;
typedef int int32_t ;
struct TYPE_20__ {TYPE_4__* pMeterMeta; } ;
struct TYPE_19__ {scalar_t__ columnIndex; int tableIndex; } ;
struct TYPE_18__ {int num; TYPE_6__* ids; int member_0; } ;
struct TYPE_17__ {scalar_t__ numOfColumns; } ;
struct TYPE_16__ {char* name; } ;
struct TYPE_15__ {int resType; int resBytes; } ;
typedef TYPE_2__ SSqlExpr ;
typedef int SSqlCmd ;
typedef TYPE_3__ SSchema ;
typedef TYPE_4__ SMeterMeta ;
typedef TYPE_5__ SColumnList ;
typedef TYPE_6__ SColumnIndex ;


 scalar_t__ TSDB_TBNAME_COLUMN_INDEX ;
 TYPE_2__* doAddProjectCol (int *,int ,scalar_t__,int ) ;
 int insertResultField (int *,int ,TYPE_5__*,int ,int ,char*) ;
 TYPE_3__* tsGetColumnSchema (TYPE_4__*,scalar_t__) ;
 TYPE_7__* tscGetMeterMetaInfo (int *,int ) ;

__attribute__((used)) static void addProjectQueryCol(SSqlCmd* pCmd, int32_t startPos, SColumnIndex* pIndex, tSQLExprItem* pItem) {
  SSqlExpr* pExpr = doAddProjectCol(pCmd, startPos, pIndex->columnIndex, pIndex->tableIndex);

  SMeterMeta* pMeterMeta = tscGetMeterMetaInfo(pCmd, pIndex->tableIndex)->pMeterMeta;

  SSchema* pSchema = tsGetColumnSchema(pMeterMeta, pIndex->columnIndex);

  char* colName = (pItem->aliasName == ((void*)0)) ? pSchema->name : pItem->aliasName;

  SColumnList ids = {0};
  ids.num = 1;
  ids.ids[0] = *pIndex;

  if (pIndex->columnIndex >= pMeterMeta->numOfColumns || pIndex->columnIndex == TSDB_TBNAME_COLUMN_INDEX) {
    ids.num = 0;
  }

  insertResultField(pCmd, startPos, &ids, pExpr->resBytes, pExpr->resType, colName);
}
