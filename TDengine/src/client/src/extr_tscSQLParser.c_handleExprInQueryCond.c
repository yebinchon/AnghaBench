
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


struct TYPE_29__ {scalar_t__ nLen; } ;
struct TYPE_30__ {scalar_t__ nSQLOptr; int colInfo; TYPE_1__ val; struct TYPE_30__* pRight; struct TYPE_30__* pLeft; } ;
typedef TYPE_2__ tSQLExpr ;
typedef scalar_t__ int32_t ;
struct TYPE_36__ {scalar_t__ columnIndex; int tableIndex; } ;
struct TYPE_35__ {int tsJoin; int * pColumnCond; int * pJoinExpr; int tableCondIndex; scalar_t__ relType; TYPE_2__* pTableCond; int * pTimewindow; } ;
struct TYPE_34__ {scalar_t__ numOfColumns; } ;
struct TYPE_33__ {TYPE_6__* pMeterMeta; } ;
struct TYPE_32__ {scalar_t__ type; } ;
struct TYPE_31__ {int type; } ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SSchema ;
typedef TYPE_5__ SMeterMetaInfo ;
typedef TYPE_6__ SMeterMeta ;
typedef TYPE_7__ SCondExpr ;
typedef TYPE_8__ SColumnIndex ;


 TYPE_8__ COLUMN_INDEX_INITIALIZER ;
 scalar_t__ PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_LIKE ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 scalar_t__ TSDB_PATTERN_STRING_MAX_LEN ;
 int TSDB_QUERY_TYPE_JOIN_QUERY ;
 scalar_t__ TSDB_TBNAME_COLUMN_INDEX ;
 scalar_t__ TSQL_EXPR_COLUMN ;
 scalar_t__ TSQL_EXPR_TAG ;
 scalar_t__ TSQL_EXPR_TBNAME ;
 scalar_t__ TSQL_EXPR_TS ;
 scalar_t__ UTIL_METER_IS_NOMRAL_METER (TYPE_5__*) ;
 int assert (int ) ;
 scalar_t__ getColumnIndexByNameEx (int *,TYPE_3__*,TYPE_8__*) ;
 int isExprDirectParentOfLeaftNode (TYPE_2__*) ;
 int isTablenameToken (int *) ;
 int setErrMsg (TYPE_3__*,char const*) ;
 scalar_t__ setExprToCond (TYPE_3__*,int **,TYPE_2__*,char const*,scalar_t__) ;
 int tSQLExprDestroy (TYPE_2__*) ;
 TYPE_4__* tsGetSchema (TYPE_6__*) ;
 TYPE_5__* tscGetMeterMetaInfo (TYPE_3__*,int ) ;
 int validTableNameOptr (TYPE_2__*) ;
 int validateJoinExprNode (TYPE_3__*,TYPE_2__*,TYPE_8__*) ;

__attribute__((used)) static int32_t handleExprInQueryCond(SSqlCmd* pCmd, tSQLExpr** pExpr, SCondExpr* pCondExpr, int32_t* type,
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
  if (getColumnIndexByNameEx(&pLeft->colInfo, pCmd, &index) != TSDB_CODE_SUCCESS) {
    setErrMsg(pCmd, msg2);
    return TSDB_CODE_INVALID_SQL;
  }

  assert(isExprDirectParentOfLeaftNode(*pExpr));

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, index.tableIndex);
  SMeterMeta* pMeterMeta = pMeterMetaInfo->pMeterMeta;

  if (index.columnIndex == PRIMARYKEY_TIMESTAMP_COL_INDEX) {
    if (!validateJoinExprNode(pCmd, *pExpr, &index)) {
      return TSDB_CODE_INVALID_SQL;
    }


    if (pRight->nSQLOptr == TK_ID) {
      pCmd->type |= TSDB_QUERY_TYPE_JOIN_QUERY;
      pCondExpr->tsJoin = 1;





      tSQLExprDestroy(*pExpr);
    } else {
      ret = setExprToCond(pCmd, &pCondExpr->pTimewindow, *pExpr, msg3, parentOptr);
    }

    *pExpr = ((void*)0);
    *type = TSQL_EXPR_TS;
  } else if (index.columnIndex >= pMeterMeta->numOfColumns ||
             index.columnIndex == TSDB_TBNAME_COLUMN_INDEX) {

    if (UTIL_METER_IS_NOMRAL_METER(pMeterMetaInfo)) {
      setErrMsg(pCmd, msg1);
      return TSDB_CODE_INVALID_SQL;
    }


    if ((*pExpr)->nSQLOptr == TK_LIKE) {
      if (pRight->val.nLen > TSDB_PATTERN_STRING_MAX_LEN) {
        return TSDB_CODE_INVALID_SQL;
      }

      SSchema* pSchema = tsGetSchema(pMeterMetaInfo->pMeterMeta);

      if ((!isTablenameToken(&pLeft->colInfo)) && pSchema[index.columnIndex].type != TSDB_DATA_TYPE_BINARY &&
          pSchema[index.columnIndex].type != TSDB_DATA_TYPE_NCHAR) {
        setErrMsg(pCmd, msg2);
        return TSDB_CODE_INVALID_SQL;
      }
    }


    if (index.columnIndex == TSDB_TBNAME_COLUMN_INDEX) {
      if (!validTableNameOptr(*pExpr)) {
        setErrMsg(pCmd, msg8);
        return TSDB_CODE_INVALID_SQL;
      }

      if (pCondExpr->pTableCond == ((void*)0)) {
        pCondExpr->pTableCond = *pExpr;
        pCondExpr->relType = parentOptr;
        pCondExpr->tableCondIndex = index.tableIndex;
      } else {
        setErrMsg(pCmd, msg7);
        return TSDB_CODE_INVALID_SQL;
      }

      *type = TSQL_EXPR_TBNAME;
      *pExpr = ((void*)0);
    } else {
      if (pRight->nSQLOptr == TK_ID) {
        if (!validateJoinExprNode(pCmd, *pExpr, &index)) {
          return TSDB_CODE_INVALID_SQL;
        }

        if (pCondExpr->pJoinExpr != ((void*)0)) {
          setErrMsg(pCmd, msg4);
          return TSDB_CODE_INVALID_SQL;
        }

        pCmd->type |= TSDB_QUERY_TYPE_JOIN_QUERY;
        ret = setExprToCond(pCmd, &pCondExpr->pJoinExpr, *pExpr, ((void*)0), parentOptr);
        *pExpr = ((void*)0);
      } else {



      }

      *type = TSQL_EXPR_TAG;
    }

  } else {
    *type = TSQL_EXPR_COLUMN;

    if (pRight->nSQLOptr == TK_ID) {
      setErrMsg(pCmd, msg6);
      return TSDB_CODE_INVALID_SQL;
    }






    ret = setExprToCond(pCmd, &pCondExpr->pColumnCond, *pExpr, ((void*)0), parentOptr);
    *pExpr = ((void*)0);
  }

  return ret;
}
