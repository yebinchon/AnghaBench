
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nSQLOptr; struct TYPE_5__* pLeft; struct TYPE_5__* pRight; } ;
typedef TYPE_1__ tSQLExpr ;


 scalar_t__ TK_AND ;
 scalar_t__ TK_OR ;
 scalar_t__ isExprDirectParentOfLeaftNode (TYPE_1__*) ;
 int tSQLExprNodeDestroy (TYPE_1__*) ;

__attribute__((used)) static void doCompactQueryExpr(tSQLExpr** pExpr) {
  if (*pExpr == ((void*)0) || isExprDirectParentOfLeaftNode(*pExpr)) {
    return;
  }

  if ((*pExpr)->pLeft) {
    doCompactQueryExpr(&(*pExpr)->pLeft);
  }

  if ((*pExpr)->pRight) {
    doCompactQueryExpr(&(*pExpr)->pRight);
  }

  if ((*pExpr)->pLeft == ((void*)0) && (*pExpr)->pRight == ((void*)0) &&
      ((*pExpr)->nSQLOptr == TK_OR || (*pExpr)->nSQLOptr == TK_AND)) {
    tSQLExprNodeDestroy(*pExpr);
    *pExpr = ((void*)0);

  } else if ((*pExpr)->pLeft == ((void*)0) && (*pExpr)->pRight != ((void*)0)) {
    tSQLExpr* tmpPtr = (*pExpr)->pRight;
    tSQLExprNodeDestroy(*pExpr);

    (*pExpr) = tmpPtr;
  } else if ((*pExpr)->pRight == ((void*)0) && (*pExpr)->pLeft != ((void*)0)) {
    tSQLExpr* tmpPtr = (*pExpr)->pLeft;
    tSQLExprNodeDestroy(*pExpr);

    (*pExpr) = tmpPtr;
  }
}
