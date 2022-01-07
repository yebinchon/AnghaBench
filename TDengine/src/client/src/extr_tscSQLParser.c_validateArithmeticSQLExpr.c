
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nSQLOptr; struct TYPE_4__* pRight; struct TYPE_4__* pLeft; } ;
typedef TYPE_1__ tSQLExpr ;
typedef scalar_t__ int32_t ;
typedef int SSchema ;
typedef int SColumnIdListRes ;


 scalar_t__ TK_PLUS ;
 scalar_t__ TK_REM ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ validateSQLExpr (TYPE_1__*,int *,scalar_t__,int *) ;

__attribute__((used)) static int32_t validateArithmeticSQLExpr(tSQLExpr* pExpr, SSchema* pSchema, int32_t numOfCols,
                                         SColumnIdListRes* pList) {
  if (pExpr == ((void*)0)) {
    return TSDB_CODE_SUCCESS;
  }

  tSQLExpr* pLeft = pExpr->pLeft;
  if (pLeft->nSQLOptr >= TK_PLUS && pLeft->nSQLOptr <= TK_REM) {
    int32_t ret = validateArithmeticSQLExpr(pLeft, pSchema, numOfCols, pList);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }
  } else {
    int32_t ret = validateSQLExpr(pLeft, pSchema, numOfCols, pList);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }
  }

  tSQLExpr* pRight = pExpr->pRight;
  if (pRight->nSQLOptr >= TK_PLUS && pRight->nSQLOptr <= TK_REM) {
    int32_t ret = validateArithmeticSQLExpr(pRight, pSchema, numOfCols, pList);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }
  } else {
    int32_t ret = validateSQLExpr(pRight, pSchema, numOfCols, pList);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }
  }

  return TSDB_CODE_SUCCESS;
}
