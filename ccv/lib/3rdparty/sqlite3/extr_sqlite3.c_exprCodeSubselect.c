
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ op; } ;
typedef int Parse ;
typedef TYPE_1__ Expr ;


 scalar_t__ TK_SELECT ;
 int sqlite3CodeSubselect (int *,TYPE_1__*,int ,int ) ;

__attribute__((used)) static int exprCodeSubselect(Parse *pParse, Expr *pExpr){
  int reg = 0;

  if( pExpr->op==TK_SELECT ){
    reg = sqlite3CodeSubselect(pParse, pExpr, 0, 0);
  }

  return reg;
}
