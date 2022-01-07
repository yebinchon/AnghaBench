
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct ExprList_item {TYPE_12__* pExpr; } ;
struct TYPE_15__ {TYPE_3__* pParse; } ;
typedef TYPE_2__ Walker ;
struct TYPE_14__ {TYPE_4__* pList; } ;
struct TYPE_18__ {int op; int op2; int iTable; TYPE_1__ x; } ;
struct TYPE_17__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_16__ {int nMem; } ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ ExprList ;
typedef TYPE_5__ Expr ;


 int ALWAYS (TYPE_12__*) ;
 int EP_FixedDest ;
 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_5__*,int ) ;






 int WRC_Continue ;
 int WRC_Prune ;
 int assert (int) ;
 scalar_t__ isAppropriateForFactoring (TYPE_5__*) ;
 int sqlite3ExprCodeTarget (TYPE_3__*,TYPE_5__*,int) ;

__attribute__((used)) static int evalConstExpr(Walker *pWalker, Expr *pExpr){
  Parse *pParse = pWalker->pParse;
  switch( pExpr->op ){
    case 129:
    case 128: {
      return WRC_Prune;
    }
    case 132: {
      return WRC_Continue;
    }
    case 130:
    case 133:
    case 131: {




      ExprList *pList = pExpr->x.pList;
      assert( !ExprHasProperty(pExpr, EP_xIsSelect) );
      if( pList ){
        int i = pList->nExpr;
        struct ExprList_item *pItem = pList->a;
        for(; i>0; i--, pItem++){
          if( ALWAYS(pItem->pExpr) ) pItem->pExpr->flags |= EP_FixedDest;
        }
      }
      break;
    }
  }
  if( isAppropriateForFactoring(pExpr) ){
    int r1 = ++pParse->nMem;
    int r2 = sqlite3ExprCodeTarget(pParse, pExpr, r1);



    assert( r2==r1 );
    pExpr->op2 = pExpr->op;
    pExpr->op = 128;
    pExpr->iTable = r2;
    return WRC_Prune;
  }
  return WRC_Continue;
}
