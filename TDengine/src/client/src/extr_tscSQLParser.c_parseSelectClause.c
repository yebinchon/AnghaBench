
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_19__ ;
typedef struct TYPE_33__ TYPE_10__ ;


struct TYPE_37__ {size_t nExpr; TYPE_4__* a; } ;
typedef TYPE_3__ tSQLExprList ;
struct TYPE_38__ {char* aliasName; TYPE_10__* pNode; } ;
typedef TYPE_4__ tSQLExprItem ;
typedef size_t int32_t ;
struct TYPE_43__ {int list; int numOfCols; int * pSchema; } ;
struct TYPE_42__ {int member_0; } ;
struct TYPE_41__ {TYPE_19__* pMeterMeta; } ;
struct TYPE_36__ {size_t numOfOutputCols; } ;
struct TYPE_40__ {int count; int command; int type; TYPE_2__ fieldsInfo; } ;
struct TYPE_39__ {int aliasName; } ;
struct TYPE_35__ {scalar_t__ n; int * z; } ;
struct TYPE_34__ {int numOfColumns; } ;
struct TYPE_33__ {scalar_t__ nSQLOptr; TYPE_1__ colInfo; } ;
typedef TYPE_5__ SSqlExpr ;
typedef TYPE_6__ SSqlCmd ;
typedef int SSchema ;
typedef TYPE_7__ SMeterMetaInfo ;
typedef TYPE_8__ SColumnIndex ;
typedef TYPE_9__ SColumnIdListRes ;


 scalar_t__ TK_ALL ;
 scalar_t__ TK_COUNT ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_LAST_ROW ;
 scalar_t__ TK_PLUS ;
 scalar_t__ TK_REM ;
 scalar_t__ TK_STRING ;
 size_t TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_COL_NAME_LEN ;
 int TSDB_DATA_TYPE_BINARY ;
 int TSDB_DATA_TYPE_DOUBLE ;
 int TSDB_FUNC_ARITHM ;
 scalar_t__ TSDB_MAX_COLUMNS ;
 int TSDB_QUERY_TYPE_PROJECTION_QUERY ;
 int TSDB_QUERY_TYPE_STABLE_QUERY ;
 int TSDB_SQL_RETRIEVE_TAGS ;
 scalar_t__ addExprAndResultField (TYPE_6__*,size_t,TYPE_4__*) ;
 int addExprParams (TYPE_5__*,char*,int ,int ,int ) ;
 scalar_t__ addProjectionExprAndResultField (TYPE_6__*,TYPE_4__*) ;
 int assert (int) ;
 scalar_t__ buildArithmeticExprString (TYPE_10__*,char**) ;
 int extractColumnNameFromString (TYPE_4__*) ;
 int functionCompatibleCheck (TYPE_6__*) ;
 scalar_t__ hasUnsupportFunctionsForMetricQuery (TYPE_6__*) ;
 int insertResultField (TYPE_6__*,size_t,int *,int,int ,int ) ;
 int setErrMsg (TYPE_6__*,char const*) ;
 int strlen (char*) ;
 int strncpy (int ,char*,int ) ;
 int * tsGetSchema (TYPE_19__*) ;
 TYPE_7__* tscGetMeterMetaInfo (TYPE_6__*,int ) ;
 scalar_t__ tscQueryMetricTags (TYPE_6__*) ;
 TYPE_5__* tscSqlExprInsert (TYPE_6__*,size_t,int ,TYPE_8__*,int ,int,int) ;
 int tscTansformSQLFunctionForMetricQuery (TYPE_6__*) ;
 size_t validateArithmeticSQLExpr (TYPE_10__*,int *,int ,TYPE_9__*) ;

int32_t parseSelectClause(SSqlCmd* pCmd, tSQLExprList* pSelection, bool isMetric) {
  assert(pSelection != ((void*)0) && pCmd != ((void*)0));

  const char* msg1 = "invalid column name/illegal column type in arithmetic expression";
  const char* msg2 = "functions can not be mixed up";
  const char* msg3 = "not support query expression";

  for (int32_t i = 0; i < pSelection->nExpr; ++i) {
    int32_t outputIndex = pCmd->fieldsInfo.numOfOutputCols;
    tSQLExprItem* pItem = &pSelection->a[i];


    if (pItem->pNode->nSQLOptr == TK_ALL || pItem->pNode->nSQLOptr == TK_ID || pItem->pNode->nSQLOptr == TK_STRING) {

      if (pItem->pNode->nSQLOptr == TK_ID && (pItem->pNode->colInfo.z == ((void*)0) && pItem->pNode->colInfo.n == 0)) {
        return TSDB_CODE_INVALID_SQL;
      }


      extractColumnNameFromString(pItem);

      pCmd->type |= TSDB_QUERY_TYPE_PROJECTION_QUERY;


      if (addProjectionExprAndResultField(pCmd, pItem) != TSDB_CODE_SUCCESS) {
        return TSDB_CODE_INVALID_SQL;
      }
    } else if (pItem->pNode->nSQLOptr >= TK_COUNT && pItem->pNode->nSQLOptr <= TK_LAST_ROW) {

      if (addExprAndResultField(pCmd, outputIndex, pItem) != TSDB_CODE_SUCCESS) {
        return TSDB_CODE_INVALID_SQL;
      }

    } else if (pItem->pNode->nSQLOptr >= TK_PLUS && pItem->pNode->nSQLOptr <= TK_REM) {

      SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
      SSchema* pSchema = tsGetSchema(pMeterMetaInfo->pMeterMeta);

      SColumnIdListRes columnList = {.pSchema = pSchema, .numOfCols = pMeterMetaInfo->pMeterMeta->numOfColumns};

      int32_t ret =
          validateArithmeticSQLExpr(pItem->pNode, pSchema, pMeterMetaInfo->pMeterMeta->numOfColumns, &columnList);
      if (ret != TSDB_CODE_SUCCESS) {
        setErrMsg(pCmd, msg1);
        return TSDB_CODE_INVALID_SQL;
      }

      char arithmeticExprStr[1024] = {0};
      char* p = arithmeticExprStr;

      if (buildArithmeticExprString(pItem->pNode, &p) != TSDB_CODE_SUCCESS) {
        return TSDB_CODE_INVALID_SQL;
      }


      SColumnIndex index = {0};
      SSqlExpr* pExpr = tscSqlExprInsert(pCmd, outputIndex, TSDB_FUNC_ARITHM, &index, TSDB_DATA_TYPE_DOUBLE,
                                         sizeof(double), sizeof(double));
      addExprParams(pExpr, arithmeticExprStr, TSDB_DATA_TYPE_BINARY, strlen(arithmeticExprStr), 0);


      if (pItem->aliasName != ((void*)0)) {
        strncpy(pExpr->aliasName, pItem->aliasName, TSDB_COL_NAME_LEN);
      } else {
        strncpy(pExpr->aliasName, arithmeticExprStr, TSDB_COL_NAME_LEN);
      }

      insertResultField(pCmd, i, &columnList.list, sizeof(double), TSDB_DATA_TYPE_DOUBLE, pExpr->aliasName);
    } else {




      setErrMsg(pCmd, msg3);
      return TSDB_CODE_INVALID_SQL;
    }

    if (pCmd->fieldsInfo.numOfOutputCols > TSDB_MAX_COLUMNS) {
      return TSDB_CODE_INVALID_SQL;
    }
  }

  if (!functionCompatibleCheck(pCmd)) {
    setErrMsg(pCmd, msg2);
    return TSDB_CODE_INVALID_SQL;
  }

  if (isMetric) {
    pCmd->type |= TSDB_QUERY_TYPE_STABLE_QUERY;
    SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

    if (tscQueryMetricTags(pCmd)) {
      pCmd->command = TSDB_SQL_RETRIEVE_TAGS;
      pCmd->count = pMeterMetaInfo->pMeterMeta->numOfColumns;
    }





    tscTansformSQLFunctionForMetricQuery(pCmd);

    if (hasUnsupportFunctionsForMetricQuery(pCmd)) {
      return TSDB_CODE_INVALID_SQL;
    }
  }

  return TSDB_CODE_SUCCESS;
}
