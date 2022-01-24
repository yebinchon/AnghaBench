#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  void* u16 ;
struct ExprList_item {int iOrderByCol; int /*<<< orphan*/ * pExpr; } ;
struct TYPE_16__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pParse; } ;
struct TYPE_14__ {TYPE_11__* pEList; } ;
struct TYPE_13__ {int /*<<< orphan*/  pExpr; } ;
struct TYPE_12__ {int nExpr; TYPE_1__* a; } ;
typedef  TYPE_2__ Select ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_3__ NameContext ;
typedef  TYPE_4__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_11__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_4__*,char const*) ; 

__attribute__((used)) static int FUNC7(
  NameContext *pNC,     /* The name context of the SELECT statement */
  Select *pSelect,      /* The SELECT statement holding pOrderBy */
  ExprList *pOrderBy,   /* An ORDER BY or GROUP BY clause to resolve */
  const char *zType     /* Either "ORDER" or "GROUP", as appropriate */
){
  int i, j;                      /* Loop counters */
  int iCol;                      /* Column number */
  struct ExprList_item *pItem;   /* A term of the ORDER BY clause */
  Parse *pParse;                 /* Parsing context */
  int nResult;                   /* Number of terms in the result set */

  if( pOrderBy==0 ) return 0;
  nResult = pSelect->pEList->nExpr;
  pParse = pNC->pParse;
  for(i=0, pItem=pOrderBy->a; i<pOrderBy->nExpr; i++, pItem++){
    Expr *pE = pItem->pExpr;
    iCol = FUNC0(pParse, pSelect->pEList, pE);
    if( iCol>0 ){
      /* If an AS-name match is found, mark this ORDER BY column as being
      ** a copy of the iCol-th result-set column.  The subsequent call to
      ** sqlite3ResolveOrderGroupBy() will convert the expression to a
      ** copy of the iCol-th result-set expression. */
      pItem->iOrderByCol = (u16)iCol;
      continue;
    }
    if( FUNC3(FUNC4(pE), &iCol) ){
      /* The ORDER BY term is an integer constant.  Again, set the column
      ** number so that sqlite3ResolveOrderGroupBy() will convert the
      ** order-by term to a copy of the result-set expression */
      if( iCol<1 || iCol>0xffff ){
        FUNC1(pParse, zType, i+1, nResult);
        return 1;
      }
      pItem->iOrderByCol = (u16)iCol;
      continue;
    }

    /* Otherwise, treat the ORDER BY term as an ordinary expression */
    pItem->iOrderByCol = 0;
    if( FUNC5(pNC, pE) ){
      return 1;
    }
    for(j=0; j<pSelect->pEList->nExpr; j++){
      if( FUNC2(pE, pSelect->pEList->a[j].pExpr)==0 ){
        pItem->iOrderByCol = j+1;
      }
    }
  }
  return FUNC6(pParse, pSelect, pOrderBy, zType);
}