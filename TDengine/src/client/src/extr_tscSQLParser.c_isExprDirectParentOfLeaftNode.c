
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pRight; int * pLeft; } ;
typedef TYPE_1__ tSQLExpr ;


 scalar_t__ isExprLeafNode (int *) ;

__attribute__((used)) static bool isExprDirectParentOfLeaftNode(tSQLExpr* pExpr) {
  return (pExpr->pLeft != ((void*)0) && pExpr->pRight != ((void*)0)) &&
         (isExprLeafNode(pExpr->pLeft) && isExprLeafNode(pExpr->pRight));
}
