#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_9__ ;
typedef  struct TYPE_42__   TYPE_8__ ;
typedef  struct TYPE_41__   TYPE_7__ ;
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;
typedef  struct TYPE_34__   TYPE_19__ ;
typedef  struct TYPE_33__   TYPE_10__ ;

/* Type definitions */
struct TYPE_37__ {size_t nExpr; TYPE_4__* a; } ;
typedef  TYPE_3__ tSQLExprList ;
struct TYPE_38__ {char* aliasName; TYPE_10__* pNode; } ;
typedef  TYPE_4__ tSQLExprItem ;
typedef  size_t int32_t ;
struct TYPE_43__ {int /*<<< orphan*/  list; int /*<<< orphan*/  numOfCols; int /*<<< orphan*/ * pSchema; } ;
struct TYPE_42__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_41__ {TYPE_19__* pMeterMeta; } ;
struct TYPE_36__ {size_t numOfOutputCols; } ;
struct TYPE_40__ {int /*<<< orphan*/  count; int /*<<< orphan*/  command; int /*<<< orphan*/  type; TYPE_2__ fieldsInfo; } ;
struct TYPE_39__ {int /*<<< orphan*/  aliasName; } ;
struct TYPE_35__ {scalar_t__ n; int /*<<< orphan*/ * z; } ;
struct TYPE_34__ {int /*<<< orphan*/  numOfColumns; } ;
struct TYPE_33__ {scalar_t__ nSQLOptr; TYPE_1__ colInfo; } ;
typedef  TYPE_5__ SSqlExpr ;
typedef  TYPE_6__ SSqlCmd ;
typedef  int /*<<< orphan*/  SSchema ;
typedef  TYPE_7__ SMeterMetaInfo ;
typedef  TYPE_8__ SColumnIndex ;
typedef  TYPE_9__ SColumnIdListRes ;

/* Variables and functions */
 scalar_t__ TK_ALL ; 
 scalar_t__ TK_COUNT ; 
 scalar_t__ TK_ID ; 
 scalar_t__ TK_LAST_ROW ; 
 scalar_t__ TK_PLUS ; 
 scalar_t__ TK_REM ; 
 scalar_t__ TK_STRING ; 
 size_t TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSDB_COL_NAME_LEN ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_BINARY ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_DOUBLE ; 
 int /*<<< orphan*/  TSDB_FUNC_ARITHM ; 
 scalar_t__ TSDB_MAX_COLUMNS ; 
 int /*<<< orphan*/  TSDB_QUERY_TYPE_PROJECTION_QUERY ; 
 int /*<<< orphan*/  TSDB_QUERY_TYPE_STABLE_QUERY ; 
 int /*<<< orphan*/  TSDB_SQL_RETRIEVE_TAGS ; 
 scalar_t__ FUNC0 (TYPE_6__*,size_t,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_10__*,char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_19__*) ; 
 TYPE_7__* FUNC13 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_6__*) ; 
 TYPE_5__* FUNC15 (TYPE_6__*,size_t,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*) ; 
 size_t FUNC17 (TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_9__*) ; 

int32_t FUNC18(SSqlCmd* pCmd, tSQLExprList* pSelection, bool isMetric) {
  FUNC3(pSelection != NULL && pCmd != NULL);

  const char* msg1 = "invalid column name/illegal column type in arithmetic expression";
  const char* msg2 = "functions can not be mixed up";
  const char* msg3 = "not support query expression";

  for (int32_t i = 0; i < pSelection->nExpr; ++i) {
    int32_t       outputIndex = pCmd->fieldsInfo.numOfOutputCols;
    tSQLExprItem* pItem = &pSelection->a[i];

    // project on all fields
    if (pItem->pNode->nSQLOptr == TK_ALL || pItem->pNode->nSQLOptr == TK_ID || pItem->pNode->nSQLOptr == TK_STRING) {
      // it is actually a function, but the function name is invalid
      if (pItem->pNode->nSQLOptr == TK_ID && (pItem->pNode->colInfo.z == NULL && pItem->pNode->colInfo.n == 0)) {
        return TSDB_CODE_INVALID_SQL;
      }

      // if the name of column is quoted, remove it and set the right information for later process
      FUNC5(pItem);

      pCmd->type |= TSDB_QUERY_TYPE_PROJECTION_QUERY;

      // select table_name1.field_name1, table_name2.field_name2  from table_name1, table_name2
      if (FUNC2(pCmd, pItem) != TSDB_CODE_SUCCESS) {
        return TSDB_CODE_INVALID_SQL;
      }
    } else if (pItem->pNode->nSQLOptr >= TK_COUNT && pItem->pNode->nSQLOptr <= TK_LAST_ROW) {
      // sql function in selection clause, append sql function info in pSqlCmd structure sequentially
      if (FUNC0(pCmd, outputIndex, pItem) != TSDB_CODE_SUCCESS) {
        return TSDB_CODE_INVALID_SQL;
      }

    } else if (pItem->pNode->nSQLOptr >= TK_PLUS && pItem->pNode->nSQLOptr <= TK_REM) {
      // arithmetic function in select
      SMeterMetaInfo* pMeterMetaInfo = FUNC13(pCmd, 0);
      SSchema*        pSchema = FUNC12(pMeterMetaInfo->pMeterMeta);

      SColumnIdListRes columnList = {.pSchema = pSchema, .numOfCols = pMeterMetaInfo->pMeterMeta->numOfColumns};

      int32_t ret =
          FUNC17(pItem->pNode, pSchema, pMeterMetaInfo->pMeterMeta->numOfColumns, &columnList);
      if (ret != TSDB_CODE_SUCCESS) {
        FUNC9(pCmd, msg1);
        return TSDB_CODE_INVALID_SQL;
      }

      char  arithmeticExprStr[1024] = {0};
      char* p = arithmeticExprStr;

      if (FUNC4(pItem->pNode, &p) != TSDB_CODE_SUCCESS) {
        return TSDB_CODE_INVALID_SQL;
      }

      // expr string is set as the parameter of function
      SColumnIndex index = {0};
      SSqlExpr*    pExpr = FUNC15(pCmd, outputIndex, TSDB_FUNC_ARITHM, &index, TSDB_DATA_TYPE_DOUBLE,
                                         sizeof(double), sizeof(double));
      FUNC1(pExpr, arithmeticExprStr, TSDB_DATA_TYPE_BINARY, FUNC10(arithmeticExprStr), 0);

      /* todo alias name should use the original sql string */
      if (pItem->aliasName != NULL) {
        FUNC11(pExpr->aliasName, pItem->aliasName, TSDB_COL_NAME_LEN);
      } else {
        FUNC11(pExpr->aliasName, arithmeticExprStr, TSDB_COL_NAME_LEN);
      }

      FUNC8(pCmd, i, &columnList.list, sizeof(double), TSDB_DATA_TYPE_DOUBLE, pExpr->aliasName);
    } else {
      /*
       * not support such expression
       * e.g., select 12+5 from table_name
       */
      FUNC9(pCmd, msg3);
      return TSDB_CODE_INVALID_SQL;
    }

    if (pCmd->fieldsInfo.numOfOutputCols > TSDB_MAX_COLUMNS) {
      return TSDB_CODE_INVALID_SQL;
    }
  }

  if (!FUNC6(pCmd)) {
    FUNC9(pCmd, msg2);
    return TSDB_CODE_INVALID_SQL;
  }

  if (isMetric) {
    pCmd->type |= TSDB_QUERY_TYPE_STABLE_QUERY;
    SMeterMetaInfo* pMeterMetaInfo = FUNC13(pCmd, 0);

    if (FUNC14(pCmd)) {  // local handle the metric tag query
      pCmd->command = TSDB_SQL_RETRIEVE_TAGS;
      pCmd->count = pMeterMetaInfo->pMeterMeta->numOfColumns;  // the number of meter schema, tricky.
    }

    /*
     * transfer sql functions that need secondary merge into another format
     * in dealing with metric queries such as: count/first/last
     */
    FUNC16(pCmd);

    if (FUNC7(pCmd)) {
      return TSDB_CODE_INVALID_SQL;
    }
  }

  return TSDB_CODE_SUCCESS;
}