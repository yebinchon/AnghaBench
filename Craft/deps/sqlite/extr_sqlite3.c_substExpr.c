
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_14__ {int pList; int pSelect; } ;
struct TYPE_16__ {scalar_t__ op; int iTable; size_t iColumn; TYPE_2__ x; struct TYPE_16__* pRight; struct TYPE_16__* pLeft; } ;
struct TYPE_15__ {size_t nExpr; TYPE_1__* a; } ;
struct TYPE_13__ {int pExpr; } ;
typedef TYPE_3__ ExprList ;
typedef TYPE_4__ Expr ;


 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_4__*,int ) ;
 scalar_t__ TK_COLUMN ;
 scalar_t__ TK_NULL ;
 int assert (int) ;
 int sqlite3ExprDelete (int *,TYPE_4__*) ;
 TYPE_4__* sqlite3ExprDup (int *,int ,int ) ;
 int substExprList (int *,int ,int,TYPE_3__*) ;
 int substSelect (int *,int ,int,TYPE_3__*) ;

__attribute__((used)) static Expr *substExpr(
  sqlite3 *db,
  Expr *pExpr,
  int iTable,
  ExprList *pEList
){
  if( pExpr==0 ) return 0;
  if( pExpr->op==TK_COLUMN && pExpr->iTable==iTable ){
    if( pExpr->iColumn<0 ){
      pExpr->op = TK_NULL;
    }else{
      Expr *pNew;
      assert( pEList!=0 && pExpr->iColumn<pEList->nExpr );
      assert( pExpr->pLeft==0 && pExpr->pRight==0 );
      pNew = sqlite3ExprDup(db, pEList->a[pExpr->iColumn].pExpr, 0);
      sqlite3ExprDelete(db, pExpr);
      pExpr = pNew;
    }
  }else{
    pExpr->pLeft = substExpr(db, pExpr->pLeft, iTable, pEList);
    pExpr->pRight = substExpr(db, pExpr->pRight, iTable, pEList);
    if( ExprHasProperty(pExpr, EP_xIsSelect) ){
      substSelect(db, pExpr->x.pSelect, iTable, pEList);
    }else{
      substExprList(db, pExpr->x.pList, iTable, pEList);
    }
  }
  return pExpr;
}
