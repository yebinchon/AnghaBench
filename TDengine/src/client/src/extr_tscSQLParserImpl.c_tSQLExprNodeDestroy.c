
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nSQLOptr; int pParam; int val; } ;
typedef TYPE_1__ tSQLExpr ;


 scalar_t__ TK_STRING ;
 int free (TYPE_1__*) ;
 int tSQLExprListDestroy (int ) ;
 int tVariantDestroy (int *) ;

void tSQLExprNodeDestroy(tSQLExpr *pExpr) {
  if (pExpr == ((void*)0)) {
    return;
  }

  if (pExpr->nSQLOptr == TK_STRING) {
    tVariantDestroy(&pExpr->val);
  }

  tSQLExprListDestroy(pExpr->pParam);

  free(pExpr);
}
