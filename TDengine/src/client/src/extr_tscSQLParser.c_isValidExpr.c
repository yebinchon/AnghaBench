
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nSQLOptr; } ;
typedef TYPE_1__ tSQLExpr ;
typedef scalar_t__ int32_t ;


 scalar_t__ TK_BINARY ;
 scalar_t__ TK_BOOL ;
 scalar_t__ TK_COUNT ;
 scalar_t__ TK_IN ;
 scalar_t__ TK_LAST_ROW ;

__attribute__((used)) static bool isValidExpr(tSQLExpr* pLeft, tSQLExpr* pRight, int32_t optr) {
  if (pLeft == ((void*)0) || (pRight == ((void*)0) && optr != TK_IN)) {
    return 0;
  }
  if ((pLeft->nSQLOptr >= TK_COUNT && pLeft->nSQLOptr <= TK_LAST_ROW) ||
      (pRight->nSQLOptr >= TK_COUNT && pRight->nSQLOptr <= TK_LAST_ROW) ||
      (pLeft->nSQLOptr >= TK_BOOL && pLeft->nSQLOptr <= TK_BINARY && pRight->nSQLOptr >= TK_BOOL &&
       pRight->nSQLOptr <= TK_BINARY)) {
    return 0;
  }

  return 1;
}
