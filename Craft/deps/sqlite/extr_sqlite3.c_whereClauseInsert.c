
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_11__ {int wtFlags; int iParent; TYPE_3__* pWC; int pExpr; } ;
typedef TYPE_2__ WhereTerm ;
struct TYPE_12__ {scalar_t__ nTerm; scalar_t__ nSlot; TYPE_2__* a; TYPE_2__* aStatic; TYPE_1__* pParse; } ;
typedef TYPE_3__ WhereClause ;
struct TYPE_10__ {int * db; } ;
typedef int Expr ;


 int TERM_DYNAMIC ;
 int TERM_VIRTUAL ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int sqlite3DbFree (int *,TYPE_2__*) ;
 TYPE_2__* sqlite3DbMallocRaw (int *,int) ;
 int sqlite3DbMallocSize (int *,TYPE_2__*) ;
 int sqlite3ExprDelete (int *,int *) ;
 int sqlite3ExprSkipCollate (int *) ;
 int testcase (int) ;

__attribute__((used)) static int whereClauseInsert(WhereClause *pWC, Expr *p, u8 wtFlags){
  WhereTerm *pTerm;
  int idx;
  testcase( wtFlags & TERM_VIRTUAL );
  if( pWC->nTerm>=pWC->nSlot ){
    WhereTerm *pOld = pWC->a;
    sqlite3 *db = pWC->pParse->db;
    pWC->a = sqlite3DbMallocRaw(db, sizeof(pWC->a[0])*pWC->nSlot*2 );
    if( pWC->a==0 ){
      if( wtFlags & TERM_DYNAMIC ){
        sqlite3ExprDelete(db, p);
      }
      pWC->a = pOld;
      return 0;
    }
    memcpy(pWC->a, pOld, sizeof(pWC->a[0])*pWC->nTerm);
    if( pOld!=pWC->aStatic ){
      sqlite3DbFree(db, pOld);
    }
    pWC->nSlot = sqlite3DbMallocSize(db, pWC->a)/sizeof(pWC->a[0]);
  }
  pTerm = &pWC->a[idx = pWC->nTerm++];
  pTerm->pExpr = sqlite3ExprSkipCollate(p);
  pTerm->wtFlags = wtFlags;
  pTerm->pWC = pWC;
  pTerm->iParent = -1;
  return idx;
}
