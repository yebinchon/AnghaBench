
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* pGroupBy; } ;
struct TYPE_11__ {scalar_t__ eCode; int pParse; TYPE_1__ u; } ;
typedef TYPE_3__ Walker ;
struct TYPE_13__ {int zName; } ;
struct TYPE_12__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_10__ {int * pExpr; } ;
typedef TYPE_4__ ExprList ;
typedef int Expr ;
typedef TYPE_5__ CollSeq ;


 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (int *,int ) ;
 int WRC_Abort ;
 int WRC_Prune ;
 int exprNodeIsConstant (TYPE_3__*,int *) ;
 int sqlite3ExprCompare (int ,int *,int *,int) ;
 TYPE_5__* sqlite3ExprNNCollSeq (int ,int *) ;
 scalar_t__ sqlite3_stricmp (char*,int ) ;

__attribute__((used)) static int exprNodeIsConstantOrGroupBy(Walker *pWalker, Expr *pExpr){
  ExprList *pGroupBy = pWalker->u.pGroupBy;
  int i;



  for(i=0; i<pGroupBy->nExpr; i++){
    Expr *p = pGroupBy->a[i].pExpr;
    if( sqlite3ExprCompare(0, pExpr, p, -1)<2 ){
      CollSeq *pColl = sqlite3ExprNNCollSeq(pWalker->pParse, p);
      if( sqlite3_stricmp("BINARY", pColl->zName)==0 ){
        return WRC_Prune;
      }
    }
  }


  if( ExprHasProperty(pExpr, EP_xIsSelect) ){
    pWalker->eCode = 0;
    return WRC_Abort;
  }

  return exprNodeIsConstant(pWalker, pExpr);
}
