
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pJoinExpr; scalar_t__ pTimewindow; scalar_t__ pColumnCond; scalar_t__ pTagCond; scalar_t__ pTableCond; } ;
typedef TYPE_1__ SCondExpr ;


 int tSQLExprDestroy (scalar_t__) ;

__attribute__((used)) static void cleanQueryExpr(SCondExpr* pCondExpr) {
  if (pCondExpr->pTableCond) {
    tSQLExprDestroy(pCondExpr->pTableCond);
  }

  if (pCondExpr->pTagCond) {
    tSQLExprDestroy(pCondExpr->pTagCond);
  }

  if (pCondExpr->pColumnCond) {
    tSQLExprDestroy(pCondExpr->pColumnCond);
  }

  if (pCondExpr->pTimewindow) {
    tSQLExprDestroy(pCondExpr->pTimewindow);
  }

  if (pCondExpr->pJoinExpr) {
    tSQLExprDestroy(pCondExpr->pJoinExpr);
  }
}
