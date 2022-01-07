
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSQLExpr ;
typedef scalar_t__ int32_t ;
typedef int SSqlCmd ;


 scalar_t__ TK_OR ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int setErrMsg (int *,char const*) ;
 int * tSQLExprCreate (int *,int *,scalar_t__) ;

__attribute__((used)) static int32_t setExprToCond(SSqlCmd* pCmd, tSQLExpr** parent, tSQLExpr* pExpr, const char* msg, int32_t parentOptr) {
  if (*parent != ((void*)0)) {
    if (parentOptr == TK_OR && msg != ((void*)0)) {
      setErrMsg(pCmd, msg);
      return TSDB_CODE_INVALID_SQL;
    }

    *parent = tSQLExprCreate((*parent), pExpr, parentOptr);
  } else {
    *parent = pExpr;
  }

  return TSDB_CODE_SUCCESS;
}
