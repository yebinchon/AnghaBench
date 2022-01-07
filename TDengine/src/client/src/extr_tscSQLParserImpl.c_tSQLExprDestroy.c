
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pRight; struct TYPE_4__* pLeft; } ;
typedef TYPE_1__ tSQLExpr ;


 int tSQLExprNodeDestroy (TYPE_1__*) ;

void tSQLExprDestroy(tSQLExpr *pExpr) {
  if (pExpr == ((void*)0)) {
    return;
  }

  tSQLExprDestroy(pExpr->pLeft);
  tSQLExprDestroy(pExpr->pRight);

  tSQLExprNodeDestroy(pExpr);
}
