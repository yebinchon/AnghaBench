
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;


typedef int sqlite3 ;
typedef int ifNullRow ;
struct TYPE_23__ {int pList; int pSelect; } ;
struct TYPE_25__ {scalar_t__ iRightJoinTable; scalar_t__ op; scalar_t__ iTable; size_t iColumn; TYPE_3__ x; struct TYPE_25__* pRight; struct TYPE_25__* pLeft; } ;
struct TYPE_24__ {scalar_t__ iTable; scalar_t__ iNewTable; scalar_t__ isLeftJoin; TYPE_11__* pParse; TYPE_2__* pEList; } ;
struct TYPE_22__ {size_t nExpr; TYPE_1__* a; } ;
struct TYPE_21__ {TYPE_5__* pExpr; } ;
struct TYPE_20__ {int * db; } ;
typedef TYPE_4__ SubstContext ;
typedef TYPE_5__ Expr ;


 int EP_CanBeNull ;
 int EP_FromJoin ;
 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_5__*,int ) ;
 int ExprSetProperty (TYPE_5__*,int ) ;
 scalar_t__ TK_COLUMN ;
 scalar_t__ TK_IF_NULL_ROW ;
 scalar_t__ TK_NULL ;
 int assert (int) ;
 int memset (TYPE_5__*,int ,int) ;
 int sqlite3ExprDelete (int *,TYPE_5__*) ;
 TYPE_5__* sqlite3ExprDup (int *,TYPE_5__*,int ) ;
 scalar_t__ sqlite3ExprIsVector (TYPE_5__*) ;
 int sqlite3VectorErrorMsg (TYPE_11__*,TYPE_5__*) ;
 int substExprList (TYPE_4__*,int ) ;
 int substSelect (TYPE_4__*,int ,int) ;

__attribute__((used)) static Expr *substExpr(
  SubstContext *pSubst,
  Expr *pExpr
){
  if( pExpr==0 ) return 0;
  if( ExprHasProperty(pExpr, EP_FromJoin)
   && pExpr->iRightJoinTable==pSubst->iTable
  ){
    pExpr->iRightJoinTable = pSubst->iNewTable;
  }
  if( pExpr->op==TK_COLUMN && pExpr->iTable==pSubst->iTable ){
    if( pExpr->iColumn<0 ){
      pExpr->op = TK_NULL;
    }else{
      Expr *pNew;
      Expr *pCopy = pSubst->pEList->a[pExpr->iColumn].pExpr;
      Expr ifNullRow;
      assert( pSubst->pEList!=0 && pExpr->iColumn<pSubst->pEList->nExpr );
      assert( pExpr->pLeft==0 && pExpr->pRight==0 );
      if( sqlite3ExprIsVector(pCopy) ){
        sqlite3VectorErrorMsg(pSubst->pParse, pCopy);
      }else{
        sqlite3 *db = pSubst->pParse->db;
        if( pSubst->isLeftJoin && pCopy->op!=TK_COLUMN ){
          memset(&ifNullRow, 0, sizeof(ifNullRow));
          ifNullRow.op = TK_IF_NULL_ROW;
          ifNullRow.pLeft = pCopy;
          ifNullRow.iTable = pSubst->iNewTable;
          pCopy = &ifNullRow;
        }
        pNew = sqlite3ExprDup(db, pCopy, 0);
        if( pNew && pSubst->isLeftJoin ){
          ExprSetProperty(pNew, EP_CanBeNull);
        }
        if( pNew && ExprHasProperty(pExpr,EP_FromJoin) ){
          pNew->iRightJoinTable = pExpr->iRightJoinTable;
          ExprSetProperty(pNew, EP_FromJoin);
        }
        sqlite3ExprDelete(db, pExpr);
        pExpr = pNew;
      }
    }
  }else{
    if( pExpr->op==TK_IF_NULL_ROW && pExpr->iTable==pSubst->iTable ){
      pExpr->iTable = pSubst->iNewTable;
    }
    pExpr->pLeft = substExpr(pSubst, pExpr->pLeft);
    pExpr->pRight = substExpr(pSubst, pExpr->pRight);
    if( ExprHasProperty(pExpr, EP_xIsSelect) ){
      substSelect(pSubst, pExpr->x.pSelect, 1);
    }else{
      substExprList(pSubst, pExpr->x.pList);
    }
  }
  return pExpr;
}
