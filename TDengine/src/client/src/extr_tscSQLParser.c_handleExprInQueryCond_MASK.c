#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_8__ ;
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {scalar_t__ nLen; } ;
struct TYPE_30__ {scalar_t__ nSQLOptr; int /*<<< orphan*/  colInfo; TYPE_1__ val; struct TYPE_30__* pRight; struct TYPE_30__* pLeft; } ;
typedef  TYPE_2__ tSQLExpr ;
typedef  scalar_t__ int32_t ;
struct TYPE_36__ {scalar_t__ columnIndex; int /*<<< orphan*/  tableIndex; } ;
struct TYPE_35__ {int tsJoin; int /*<<< orphan*/ * pColumnCond; int /*<<< orphan*/ * pJoinExpr; int /*<<< orphan*/  tableCondIndex; scalar_t__ relType; TYPE_2__* pTableCond; int /*<<< orphan*/ * pTimewindow; } ;
struct TYPE_34__ {scalar_t__ numOfColumns; } ;
struct TYPE_33__ {TYPE_6__* pMeterMeta; } ;
struct TYPE_32__ {scalar_t__ type; } ;
struct TYPE_31__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ SSqlCmd ;
typedef  TYPE_4__ SSchema ;
typedef  TYPE_5__ SMeterMetaInfo ;
typedef  TYPE_6__ SMeterMeta ;
typedef  TYPE_7__ SCondExpr ;
typedef  TYPE_8__ SColumnIndex ;

/* Variables and functions */
 TYPE_8__ COLUMN_INDEX_INITIALIZER ; 
 scalar_t__ PRIMARYKEY_TIMESTAMP_COL_INDEX ; 
 scalar_t__ TK_ID ; 
 scalar_t__ TK_LIKE ; 
 scalar_t__ TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 scalar_t__ TSDB_DATA_TYPE_BINARY ; 
 scalar_t__ TSDB_DATA_TYPE_NCHAR ; 
 scalar_t__ TSDB_PATTERN_STRING_MAX_LEN ; 
 int /*<<< orphan*/  TSDB_QUERY_TYPE_JOIN_QUERY ; 
 scalar_t__ TSDB_TBNAME_COLUMN_INDEX ; 
 scalar_t__ TSQL_EXPR_COLUMN ; 
 scalar_t__ TSQL_EXPR_TAG ; 
 scalar_t__ TSQL_EXPR_TBNAME ; 
 scalar_t__ TSQL_EXPR_TS ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char const*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ **,TYPE_2__*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_4__* FUNC8 (TYPE_6__*) ; 
 TYPE_5__* FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_2__*,TYPE_8__*) ; 

__attribute__((used)) static int32_t FUNC12(SSqlCmd* pCmd, tSQLExpr** pExpr, SCondExpr* pCondExpr, int32_t* type,
                                     int32_t parentOptr) {
  const char* msg1 = "meter query cannot use tags filter";
  const char* msg2 = "illegal column name";
  const char* msg3 = "only one query time range allowed";
  const char* msg4 = "only one join condition allowed";
  const char* msg5 = "AND is allowed to filter on different ordinary columns";
  const char* msg6 = "not support ordinary column join";
  const char* msg7 = "only one query condition on tbname allowed";
  const char* msg8 = "only in/like allowed in filter table name";

  tSQLExpr* pLeft = (*pExpr)->pLeft;
  tSQLExpr* pRight = (*pExpr)->pRight;

  int32_t ret = TSDB_CODE_SUCCESS;

  SColumnIndex index = COLUMN_INDEX_INITIALIZER;
  if (FUNC2(&pLeft->colInfo, pCmd, &index) != TSDB_CODE_SUCCESS) {
    FUNC5(pCmd, msg2);
    return TSDB_CODE_INVALID_SQL;
  }

  FUNC1(FUNC3(*pExpr));

  SMeterMetaInfo* pMeterMetaInfo = FUNC9(pCmd, index.tableIndex);
  SMeterMeta*     pMeterMeta = pMeterMetaInfo->pMeterMeta;

  if (index.columnIndex == PRIMARYKEY_TIMESTAMP_COL_INDEX) {  // query on time range
    if (!FUNC11(pCmd, *pExpr, &index)) {
      return TSDB_CODE_INVALID_SQL;
    }

    // set join query condition
    if (pRight->nSQLOptr == TK_ID) {  // no need to keep the timestamp join condition
      pCmd->type |= TSDB_QUERY_TYPE_JOIN_QUERY;
      pCondExpr->tsJoin = true;

      /*
       * to release expression, e.g., m1.ts = m2.ts,
       * since this expression is used to set the join query type
       */
      FUNC7(*pExpr);
    } else {
      ret = FUNC6(pCmd, &pCondExpr->pTimewindow, *pExpr, msg3, parentOptr);
    }

    *pExpr = NULL;  // remove this expression
    *type = TSQL_EXPR_TS;
  } else if (index.columnIndex >= pMeterMeta->numOfColumns ||
             index.columnIndex == TSDB_TBNAME_COLUMN_INDEX) {  // query on tags
    // check for tag query condition
    if (FUNC0(pMeterMetaInfo)) {
      FUNC5(pCmd, msg1);
      return TSDB_CODE_INVALID_SQL;
    }

    // check for like expression
    if ((*pExpr)->nSQLOptr == TK_LIKE) {
      if (pRight->val.nLen > TSDB_PATTERN_STRING_MAX_LEN) {
        return TSDB_CODE_INVALID_SQL;
      }

      SSchema* pSchema = FUNC8(pMeterMetaInfo->pMeterMeta);

      if ((!FUNC4(&pLeft->colInfo)) && pSchema[index.columnIndex].type != TSDB_DATA_TYPE_BINARY &&
          pSchema[index.columnIndex].type != TSDB_DATA_TYPE_NCHAR) {
        FUNC5(pCmd, msg2);
        return TSDB_CODE_INVALID_SQL;
      }
    }

    // in case of in operator, keep it in a seperate attribute
    if (index.columnIndex == TSDB_TBNAME_COLUMN_INDEX) {
      if (!FUNC10(*pExpr)) {
        FUNC5(pCmd, msg8);
        return TSDB_CODE_INVALID_SQL;
      }

      if (pCondExpr->pTableCond == NULL) {
        pCondExpr->pTableCond = *pExpr;
        pCondExpr->relType = parentOptr;
        pCondExpr->tableCondIndex = index.tableIndex;
      } else {
        FUNC5(pCmd, msg7);
        return TSDB_CODE_INVALID_SQL;
      }

      *type = TSQL_EXPR_TBNAME;
      *pExpr = NULL;
    } else {
      if (pRight->nSQLOptr == TK_ID) {  // join on tag columns for stable query
        if (!FUNC11(pCmd, *pExpr, &index)) {
          return TSDB_CODE_INVALID_SQL;
        }

        if (pCondExpr->pJoinExpr != NULL) {
          FUNC5(pCmd, msg4);
          return TSDB_CODE_INVALID_SQL;
        }

        pCmd->type |= TSDB_QUERY_TYPE_JOIN_QUERY;
        ret = FUNC6(pCmd, &pCondExpr->pJoinExpr, *pExpr, NULL, parentOptr);
        *pExpr = NULL;
      } else {
        // do nothing
        //                ret = setExprToCond(pCmd, &pCondExpr->pTagCond,
        //                *pExpr, NULL, parentOptr);
      }

      *type = TSQL_EXPR_TAG;
    }

  } else {  // query on other columns
    *type = TSQL_EXPR_COLUMN;

    if (pRight->nSQLOptr == TK_ID) {  // other column cannot be served as the join column
      FUNC5(pCmd, msg6);
      return TSDB_CODE_INVALID_SQL;
    }

    //    if (parentOptr == TK_OR) {
    //      setErrMsg(pCmd, msg5);
    //      return TSDB_CODE_INVALID_SQL;
    //    }

    ret = FUNC6(pCmd, &pCondExpr->pColumnCond, *pExpr, NULL, parentOptr);
    *pExpr = NULL;  // remove it from expr tree
  }

  return ret;
}