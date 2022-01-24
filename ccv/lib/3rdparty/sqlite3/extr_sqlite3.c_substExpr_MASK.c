#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  ifNullRow ;
struct TYPE_23__ {int /*<<< orphan*/  pList; int /*<<< orphan*/  pSelect; } ;
struct TYPE_25__ {scalar_t__ iRightJoinTable; scalar_t__ op; scalar_t__ iTable; size_t iColumn; TYPE_3__ x; struct TYPE_25__* pRight; struct TYPE_25__* pLeft; } ;
struct TYPE_24__ {scalar_t__ iTable; scalar_t__ iNewTable; scalar_t__ isLeftJoin; TYPE_11__* pParse; TYPE_2__* pEList; } ;
struct TYPE_22__ {size_t nExpr; TYPE_1__* a; } ;
struct TYPE_21__ {TYPE_5__* pExpr; } ;
struct TYPE_20__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_4__ SubstContext ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_CanBeNull ; 
 int /*<<< orphan*/  EP_FromJoin ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TK_COLUMN ; 
 scalar_t__ TK_IF_NULL_ROW ; 
 scalar_t__ TK_NULL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Expr *FUNC10(
  SubstContext *pSubst,  /* Description of the substitution */
  Expr *pExpr            /* Expr in which substitution occurs */
){
  if( pExpr==0 ) return 0;
  if( FUNC0(pExpr, EP_FromJoin)
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
      FUNC2( pSubst->pEList!=0 && pExpr->iColumn<pSubst->pEList->nExpr );
      FUNC2( pExpr->pLeft==0 && pExpr->pRight==0 );
      if( FUNC6(pCopy) ){
        FUNC7(pSubst->pParse, pCopy);
      }else{
        sqlite3 *db = pSubst->pParse->db;
        if( pSubst->isLeftJoin && pCopy->op!=TK_COLUMN ){
          FUNC3(&ifNullRow, 0, sizeof(ifNullRow));
          ifNullRow.op = TK_IF_NULL_ROW;
          ifNullRow.pLeft = pCopy;
          ifNullRow.iTable = pSubst->iNewTable;
          pCopy = &ifNullRow;
        }
        pNew = FUNC5(db, pCopy, 0);
        if( pNew && pSubst->isLeftJoin ){
          FUNC1(pNew, EP_CanBeNull);
        }
        if( pNew && FUNC0(pExpr,EP_FromJoin) ){
          pNew->iRightJoinTable = pExpr->iRightJoinTable;
          FUNC1(pNew, EP_FromJoin);
        }
        FUNC4(db, pExpr);
        pExpr = pNew;
      }
    }
  }else{
    if( pExpr->op==TK_IF_NULL_ROW && pExpr->iTable==pSubst->iTable ){
      pExpr->iTable = pSubst->iNewTable;
    }
    pExpr->pLeft = FUNC10(pSubst, pExpr->pLeft);
    pExpr->pRight = FUNC10(pSubst, pExpr->pRight);
    if( FUNC0(pExpr, EP_xIsSelect) ){
      FUNC9(pSubst, pExpr->x.pSelect, 1);
    }else{
      FUNC8(pSubst, pExpr->x.pList);
    }
  }
  return pExpr;
}