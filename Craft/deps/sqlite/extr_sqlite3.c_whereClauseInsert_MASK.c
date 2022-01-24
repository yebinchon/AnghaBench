#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_11__ {int wtFlags; int iParent; TYPE_3__* pWC; int /*<<< orphan*/  pExpr; } ;
typedef  TYPE_2__ WhereTerm ;
struct TYPE_12__ {scalar_t__ nTerm; scalar_t__ nSlot; TYPE_2__* a; TYPE_2__* aStatic; TYPE_1__* pParse; } ;
typedef  TYPE_3__ WhereClause ;
struct TYPE_10__ {int /*<<< orphan*/ * db; } ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int TERM_DYNAMIC ; 
 int TERM_VIRTUAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(WhereClause *pWC, Expr *p, u8 wtFlags){
  WhereTerm *pTerm;
  int idx;
  FUNC6( wtFlags & TERM_VIRTUAL );  /* EV: R-00211-15100 */
  if( pWC->nTerm>=pWC->nSlot ){
    WhereTerm *pOld = pWC->a;
    sqlite3 *db = pWC->pParse->db;
    pWC->a = FUNC2(db, sizeof(pWC->a[0])*pWC->nSlot*2 );
    if( pWC->a==0 ){
      if( wtFlags & TERM_DYNAMIC ){
        FUNC4(db, p);
      }
      pWC->a = pOld;
      return 0;
    }
    FUNC0(pWC->a, pOld, sizeof(pWC->a[0])*pWC->nTerm);
    if( pOld!=pWC->aStatic ){
      FUNC1(db, pOld);
    }
    pWC->nSlot = FUNC3(db, pWC->a)/sizeof(pWC->a[0]);
  }
  pTerm = &pWC->a[idx = pWC->nTerm++];
  pTerm->pExpr = FUNC5(p);
  pTerm->wtFlags = wtFlags;
  pTerm->pWC = pWC;
  pTerm->iParent = -1;
  return idx;
}