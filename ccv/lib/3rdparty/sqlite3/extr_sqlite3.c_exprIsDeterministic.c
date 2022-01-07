
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int w ;
struct TYPE_4__ {int eCode; int xSelectCallback; int xExprCallback; } ;
typedef TYPE_1__ Walker ;
typedef int Expr ;


 int exprNodeIsDeterministic ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3SelectWalkFail ;
 int sqlite3WalkExpr (TYPE_1__*,int *) ;

__attribute__((used)) static int exprIsDeterministic(Expr *p){
  Walker w;
  memset(&w, 0, sizeof(w));
  w.eCode = 1;
  w.xExprCallback = exprNodeIsDeterministic;
  w.xSelectCallback = sqlite3SelectWalkFail;
  sqlite3WalkExpr(&w, p);
  return w.eCode;
}
