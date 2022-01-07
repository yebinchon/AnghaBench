
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_30__ {TYPE_2__* pNode; } ;
typedef TYPE_3__ tSQLExprItem ;
typedef scalar_t__ int32_t ;
struct TYPE_35__ {scalar_t__ tableIndex; scalar_t__ columnIndex; scalar_t__ member_1; int member_0; } ;
struct TYPE_34__ {scalar_t__ numOfColumns; } ;
struct TYPE_33__ {TYPE_7__* pMeterMeta; } ;
struct TYPE_32__ {int name; int bytes; int type; } ;
struct TYPE_28__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_31__ {scalar_t__ numOfTables; int type; TYPE_1__ fieldsInfo; } ;
struct TYPE_29__ {scalar_t__ nSQLOptr; int colInfo; } ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SSchema ;
typedef TYPE_6__ SMeterMetaInfo ;
typedef TYPE_7__ SMeterMeta ;
typedef TYPE_8__ SColumnIndex ;


 TYPE_8__ COLUMN_INDEX_INITIALIZER ;
 scalar_t__ COLUMN_INDEX_INITIAL_VAL ;
 scalar_t__ TK_ALL ;
 scalar_t__ TK_ID ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_DATA_TYPE_BINARY ;
 int TSDB_FUNC_TAGPRJ ;
 int TSDB_METER_NAME_LEN ;
 int TSDB_QUERY_TYPE_STABLE_QUERY ;
 scalar_t__ TSDB_TBNAME_COLUMN_INDEX ;
 int TSQL_TBNAME_L ;
 scalar_t__ UTIL_METER_IS_NOMRAL_METER (TYPE_6__*) ;
 int addProjectQueryCol (TYPE_4__*,scalar_t__,TYPE_8__*,TYPE_3__*) ;
 scalar_t__ doAddProjectionExprAndResultFields (TYPE_4__*,TYPE_8__*,scalar_t__) ;
 scalar_t__ getColumnIndexByNameEx (int *,TYPE_4__*,TYPE_8__*) ;
 scalar_t__ getTableIndexByName (int *,TYPE_4__*,TYPE_8__*) ;
 int setErrMsg (TYPE_4__*,char const*) ;
 int strcpy (int ,int ) ;
 int tscAddSpecialColumnForSelect (TYPE_4__*,scalar_t__,int ,TYPE_8__*,TYPE_5__*,int) ;
 TYPE_6__* tscGetMeterMetaInfo (TYPE_4__*,scalar_t__) ;

int32_t addProjectionExprAndResultField(SSqlCmd* pCmd, tSQLExprItem* pItem) {
  const char* msg0 = "invalid column name";
  const char* msg1 = "tag for table query is not allowed";

  int32_t startPos = pCmd->fieldsInfo.numOfOutputCols;

  if (pItem->pNode->nSQLOptr == TK_ALL) {
    SColumnIndex index = COLUMN_INDEX_INITIALIZER;
    if (getTableIndexByName(&pItem->pNode->colInfo, pCmd, &index) != TSDB_CODE_SUCCESS) {
      return TSDB_CODE_INVALID_SQL;
    }


    if (index.tableIndex == COLUMN_INDEX_INITIAL_VAL) {
      for (int32_t i = 0; i < pCmd->numOfTables; ++i) {
        index.tableIndex = i;
        int32_t inc = doAddProjectionExprAndResultFields(pCmd, &index, startPos);
        startPos += inc;
      }
    } else {
      doAddProjectionExprAndResultFields(pCmd, &index, startPos);
    }
  } else if (pItem->pNode->nSQLOptr == TK_ID) {
    SColumnIndex index = COLUMN_INDEX_INITIALIZER;

    if (getColumnIndexByNameEx(&pItem->pNode->colInfo, pCmd, &index) != TSDB_CODE_SUCCESS) {
      setErrMsg(pCmd, msg0);
      return TSDB_CODE_INVALID_SQL;
    }

    if (index.columnIndex == TSDB_TBNAME_COLUMN_INDEX) {
      SColumnIndex index1 = {0, TSDB_TBNAME_COLUMN_INDEX};
      SSchema colSchema = {.type = TSDB_DATA_TYPE_BINARY, .bytes = TSDB_METER_NAME_LEN};
      strcpy(colSchema.name, TSQL_TBNAME_L);

      pCmd->type = TSDB_QUERY_TYPE_STABLE_QUERY;
      tscAddSpecialColumnForSelect(pCmd, startPos, TSDB_FUNC_TAGPRJ, &index1, &colSchema, 1);
    } else {
      SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, index.tableIndex);
      SMeterMeta* pMeterMeta = pMeterMetaInfo->pMeterMeta;

      if (index.columnIndex >= pMeterMeta->numOfColumns && UTIL_METER_IS_NOMRAL_METER(pMeterMetaInfo)) {
        setErrMsg(pCmd, msg1);
        return TSDB_CODE_INVALID_SQL;
      }

      addProjectQueryCol(pCmd, startPos, &index, pItem);
    }
  } else {
    return TSDB_CODE_INVALID_SQL;
  }

  return TSDB_CODE_SUCCESS;
}
