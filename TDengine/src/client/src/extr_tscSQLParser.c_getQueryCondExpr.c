
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nSQLOptr; struct TYPE_8__* pRight; struct TYPE_8__* pLeft; } ;
typedef TYPE_1__ tSQLExpr ;
typedef scalar_t__ int32_t ;
typedef int SSqlCmd ;
typedef int SCondExpr ;


 scalar_t__ TK_OR ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSQL_EXPR_TAG ;
 scalar_t__ TSQL_EXPR_TBNAME ;
 int exchangeExpr (TYPE_1__*) ;
 scalar_t__ handleExprInQueryCond (int *,TYPE_1__**,int *,scalar_t__*,scalar_t__) ;
 int isExprDirectParentOfLeaftNode (TYPE_1__*) ;
 int isValidExpr (TYPE_1__*,TYPE_1__*,scalar_t__) ;
 int setErrMsg (int *,char const*) ;

int32_t getQueryCondExpr(SSqlCmd* pCmd, tSQLExpr** pExpr, SCondExpr* pCondExpr, int32_t* type, int32_t parentOptr) {
  if (pExpr == ((void*)0)) {
    return TSDB_CODE_SUCCESS;
  }

  const char* msg1 = "query condition between different columns must use 'AND'";

  tSQLExpr* pLeft = (*pExpr)->pLeft;
  tSQLExpr* pRight = (*pExpr)->pRight;

  if (!isValidExpr(pLeft, pRight, (*pExpr)->nSQLOptr)) {
    return TSDB_CODE_INVALID_SQL;
  }

  int32_t leftType = -1;
  int32_t rightType = -1;

  if (!isExprDirectParentOfLeaftNode(*pExpr)) {
    int32_t ret = getQueryCondExpr(pCmd, &(*pExpr)->pLeft, pCondExpr, &leftType, (*pExpr)->nSQLOptr);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }

    ret = getQueryCondExpr(pCmd, &(*pExpr)->pRight, pCondExpr, &rightType, (*pExpr)->nSQLOptr);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }





    if (leftType != rightType) {
      if ((*pExpr)->nSQLOptr == TK_OR && (leftType + rightType != TSQL_EXPR_TBNAME + TSQL_EXPR_TAG)) {
        setErrMsg(pCmd, msg1);
        return TSDB_CODE_INVALID_SQL;
      }
    }

    *type = rightType;
    return TSDB_CODE_SUCCESS;
  }

  exchangeExpr(*pExpr);

  return handleExprInQueryCond(pCmd, pExpr, pCondExpr, type, parentOptr);
}
