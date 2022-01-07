
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pRight; struct TYPE_6__* pLeft; } ;
typedef TYPE_1__ tSQLExpr ;
typedef scalar_t__ int32_t ;
typedef int SSqlCmd ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int isExprDirectParentOfLeaftNode (TYPE_1__*) ;
 int relToString (int *,TYPE_1__*,char**) ;
 scalar_t__ tSQLExprLeafToString (TYPE_1__*,int,char**) ;

__attribute__((used)) static int32_t getTagCondString(SSqlCmd* pCmd, tSQLExpr* pExpr, char** str) {
  if (pExpr == ((void*)0)) {
    return TSDB_CODE_SUCCESS;
  }

  if (!isExprDirectParentOfLeaftNode(pExpr)) {
    *(*str) = '(';
    *str += 1;

    int32_t ret = getTagCondString(pCmd, pExpr->pLeft, str);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }

    relToString(pCmd, pExpr, str);

    ret = getTagCondString(pCmd, pExpr->pRight, str);

    *(*str) = ')';
    *str += 1;

    return ret;
  }

  return tSQLExprLeafToString(pExpr, 1, str);
}
