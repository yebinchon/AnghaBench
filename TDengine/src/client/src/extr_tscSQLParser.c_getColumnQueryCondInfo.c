
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nSQLOptr; int colInfo; struct TYPE_5__* pLeft; struct TYPE_5__* pRight; } ;
typedef TYPE_1__ tSQLExpr ;
typedef scalar_t__ int32_t ;
typedef int SSqlCmd ;
typedef int SColumnIndex ;


 int COLUMN_INDEX_INITIALIZER ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ extractColumnFilterInfo (int *,int *,TYPE_1__*,scalar_t__) ;
 scalar_t__ getColumnIndexByNameEx (int *,int *,int *) ;
 int isExprDirectParentOfLeaftNode (TYPE_1__*) ;

__attribute__((used)) static int32_t getColumnQueryCondInfo(SSqlCmd* pCmd, tSQLExpr* pExpr, int32_t relOptr) {
  if (pExpr == ((void*)0)) {
    return TSDB_CODE_SUCCESS;
  }

  if (!isExprDirectParentOfLeaftNode(pExpr)) {
    int32_t ret = getColumnQueryCondInfo(pCmd, pExpr->pLeft, pExpr->nSQLOptr);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }

    return getColumnQueryCondInfo(pCmd, pExpr->pRight, pExpr->nSQLOptr);
  } else {
    SColumnIndex index = COLUMN_INDEX_INITIALIZER;
    if (getColumnIndexByNameEx(&pExpr->pLeft->colInfo, pCmd, &index) != TSDB_CODE_SUCCESS) {
      return TSDB_CODE_INVALID_SQL;
    }

    return extractColumnFilterInfo(pCmd, &index, pExpr, relOptr);
  }
}
