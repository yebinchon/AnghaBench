
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nSQLOptr; int colInfo; struct TYPE_5__* pRight; struct TYPE_5__* pLeft; } ;
typedef TYPE_1__ tSQLExpr ;
typedef scalar_t__ int32_t ;
typedef int SSqlCmd ;


 scalar_t__ TK_IN ;
 scalar_t__ TK_LIKE ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int isTablenameToken (int *) ;
 int setErrMsg (int *,char const*) ;
 scalar_t__ tablenameCondToString (TYPE_1__*,char*) ;
 scalar_t__ tablenameListToString (TYPE_1__*,char*) ;

__attribute__((used)) static int32_t getTablenameCond(SSqlCmd* pCmd, tSQLExpr* pTableCond, char* str) {
  const char* msg0 = "invalid table name list";

  if (pTableCond == ((void*)0)) {
    return TSDB_CODE_SUCCESS;
  }

  tSQLExpr* pLeft = pTableCond->pLeft;
  tSQLExpr* pRight = pTableCond->pRight;

  if (!isTablenameToken(&pLeft->colInfo)) {
    return TSDB_CODE_INVALID_SQL;
  }

  int32_t ret = TSDB_CODE_SUCCESS;

  if (pTableCond->nSQLOptr == TK_IN) {
    ret = tablenameListToString(pRight, str);
  } else if (pTableCond->nSQLOptr == TK_LIKE) {
    ret = tablenameCondToString(pRight, str);
  }

  if (ret != TSDB_CODE_SUCCESS) {
    setErrMsg(pCmd, msg0);
  }

  return ret;
}
