
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nSQLOptr; int * pLeft; int * pRight; } ;
typedef TYPE_1__ tSQLExpr ;


 scalar_t__ TK_BOOL ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_NCHAR ;
 scalar_t__ TK_SET ;

__attribute__((used)) static bool isExprLeafNode(tSQLExpr* pExpr) {
  return (pExpr->pRight == ((void*)0) && pExpr->pLeft == ((void*)0)) &&
         (pExpr->nSQLOptr == TK_ID || (pExpr->nSQLOptr >= TK_BOOL && pExpr->nSQLOptr <= TK_NCHAR) ||
          pExpr->nSQLOptr == TK_SET);
}
