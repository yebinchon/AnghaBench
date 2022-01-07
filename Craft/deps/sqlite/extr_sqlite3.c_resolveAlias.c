
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ u16 ;
typedef int sqlite3 ;
struct TYPE_25__ {int zToken; } ;
struct TYPE_28__ {int flags; scalar_t__ op; scalar_t__ iTable; int flags2; TYPE_2__ u; } ;
struct TYPE_27__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_26__ {scalar_t__ nAlias; int * db; } ;
struct TYPE_24__ {scalar_t__ iAlias; TYPE_5__* pExpr; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ ExprList ;
typedef TYPE_5__ Expr ;


 int EP2_MallocedToken ;
 int EP_IntValue ;
 int EP_Reduced ;
 int EP_Resolved ;
 int EP_Static ;
 int EP_TokenOnly ;
 int ExprHasProperty (TYPE_5__*,int ) ;
 int ExprSetProperty (TYPE_5__*,int ) ;
 int TK_AS ;
 scalar_t__ TK_COLLATE ;
 scalar_t__ TK_COLUMN ;
 int assert (int) ;
 int incrAggFunctionDepth (TYPE_5__*,int) ;
 int memcpy (TYPE_5__*,TYPE_5__*,int) ;
 int sqlite3DbFree (int *,TYPE_5__*) ;
 int sqlite3DbStrDup (int *,int ) ;
 TYPE_5__* sqlite3ExprAddCollateString (TYPE_3__*,TYPE_5__*,int ) ;
 int sqlite3ExprDelete (int *,TYPE_5__*) ;
 TYPE_5__* sqlite3ExprDup (int *,TYPE_5__*,int ) ;
 TYPE_5__* sqlite3PExpr (TYPE_3__*,int ,TYPE_5__*,int ,int ) ;

__attribute__((used)) static void resolveAlias(
  Parse *pParse,
  ExprList *pEList,
  int iCol,
  Expr *pExpr,
  const char *zType,
  int nSubquery
){
  Expr *pOrig;
  Expr *pDup;
  sqlite3 *db;

  assert( iCol>=0 && iCol<pEList->nExpr );
  pOrig = pEList->a[iCol].pExpr;
  assert( pOrig!=0 );
  assert( pOrig->flags & EP_Resolved );
  db = pParse->db;
  pDup = sqlite3ExprDup(db, pOrig, 0);
  if( pDup==0 ) return;
  if( pOrig->op!=TK_COLUMN && zType[0]!='G' ){
    incrAggFunctionDepth(pDup, nSubquery);
    pDup = sqlite3PExpr(pParse, TK_AS, pDup, 0, 0);
    if( pDup==0 ) return;
    if( pEList->a[iCol].iAlias==0 ){
      pEList->a[iCol].iAlias = (u16)(++pParse->nAlias);
    }
    pDup->iTable = pEList->a[iCol].iAlias;
  }
  if( pExpr->op==TK_COLLATE ){
    pDup = sqlite3ExprAddCollateString(pParse, pDup, pExpr->u.zToken);
  }
  ExprSetProperty(pExpr, EP_Static);
  sqlite3ExprDelete(db, pExpr);
  memcpy(pExpr, pDup, sizeof(*pExpr));
  if( !ExprHasProperty(pExpr, EP_IntValue) && pExpr->u.zToken!=0 ){
    assert( (pExpr->flags & (EP_Reduced|EP_TokenOnly))==0 );
    pExpr->u.zToken = sqlite3DbStrDup(db, pExpr->u.zToken);
    pExpr->flags2 |= EP2_MallocedToken;
  }
  sqlite3DbFree(db, pDup);
}
