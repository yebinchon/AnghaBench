
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pList; int pSelect; } ;
struct TYPE_6__ {int nHeight; TYPE_1__ x; int pRight; int pLeft; } ;
typedef TYPE_2__ Expr ;


 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_2__*,int ) ;
 int heightOfExpr (int ,int*) ;
 int heightOfExprList (int ,int*) ;
 int heightOfSelect (int ,int*) ;

__attribute__((used)) static void exprSetHeight(Expr *p){
  int nHeight = 0;
  heightOfExpr(p->pLeft, &nHeight);
  heightOfExpr(p->pRight, &nHeight);
  if( ExprHasProperty(p, EP_xIsSelect) ){
    heightOfSelect(p->x.pSelect, &nHeight);
  }else{
    heightOfExprList(p->x.pList, &nHeight);
  }
  p->nHeight = nHeight + 1;
}
