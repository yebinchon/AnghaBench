
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* pList; } ;
struct TYPE_11__ {int iRightJoinTable; scalar_t__ op; struct TYPE_11__* pRight; struct TYPE_11__* pLeft; TYPE_3__ x; } ;
struct TYPE_9__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_8__ {TYPE_4__* pExpr; } ;
typedef TYPE_4__ Expr ;


 int EP_FromJoin ;
 int ExprClearProperty (TYPE_4__*,int ) ;
 scalar_t__ ExprHasProperty (TYPE_4__*,int ) ;
 scalar_t__ TK_FUNCTION ;

__attribute__((used)) static void unsetJoinExpr(Expr *p, int iTable){
  while( p ){
    if( ExprHasProperty(p, EP_FromJoin)
     && (iTable<0 || p->iRightJoinTable==iTable) ){
      ExprClearProperty(p, EP_FromJoin);
    }
    if( p->op==TK_FUNCTION && p->x.pList ){
      int i;
      for(i=0; i<p->x.pList->nExpr; i++){
        unsetJoinExpr(p->x.pList->a[i].pExpr, iTable);
      }
    }
    unsetJoinExpr(p->pLeft, iTable);
    p = p->pRight;
  }
}
