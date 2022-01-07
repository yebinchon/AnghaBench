
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ i16 ;
struct TYPE_6__ {struct TYPE_6__* pRight; struct TYPE_6__* pLeft; scalar_t__ iRightJoinTable; } ;
typedef TYPE_1__ Expr ;


 int EP_FromJoin ;
 int EP_Reduced ;
 int EP_TokenOnly ;
 int ExprHasAnyProperty (TYPE_1__*,int) ;
 int ExprSetIrreducible (TYPE_1__*) ;
 int ExprSetProperty (TYPE_1__*,int ) ;
 int assert (int) ;

__attribute__((used)) static void setJoinExpr(Expr *p, int iTable){
  while( p ){
    ExprSetProperty(p, EP_FromJoin);
    assert( !ExprHasAnyProperty(p, EP_TokenOnly|EP_Reduced) );
    ExprSetIrreducible(p);
    p->iRightJoinTable = (i16)iTable;
    setJoinExpr(p->pLeft, iTable);
    p = p->pRight;
  }
}
