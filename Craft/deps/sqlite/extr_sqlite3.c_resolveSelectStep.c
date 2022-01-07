
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct SrcList_item {char* zName; int isCorrelated; scalar_t__ pSelect; } ;
struct ExprList_item {int * pExpr; } ;
struct TYPE_26__ {scalar_t__ mallocFailed; } ;
typedef TYPE_3__ sqlite3 ;
typedef int sNC ;
struct TYPE_24__ {TYPE_7__* pNC; } ;
struct TYPE_27__ {TYPE_6__* pParse; TYPE_1__ u; } ;
typedef TYPE_4__ Walker ;
struct TYPE_31__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_30__ {int ncFlags; struct TYPE_30__* pNext; TYPE_8__* pEList; TYPE_2__* pSrcList; scalar_t__ nRef; TYPE_6__* pParse; } ;
struct TYPE_29__ {char* zAuthContext; scalar_t__ nErr; TYPE_3__* db; } ;
struct TYPE_28__ {int selFlags; struct TYPE_28__* pPrior; TYPE_8__* pOrderBy; int * pWhere; int * pHaving; TYPE_8__* pEList; TYPE_8__* pGroupBy; TYPE_2__* pSrc; int * pOffset; int * pLimit; } ;
struct TYPE_25__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_5__ Select ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ NameContext ;
typedef TYPE_8__ ExprList ;
typedef int Expr ;


 int EP_Agg ;
 scalar_t__ ExprHasProperty (int *,int ) ;
 int NC_AllowAgg ;
 int NC_AsMaybe ;
 int NC_HasAgg ;
 int SF_Aggregate ;
 int SF_Expanded ;
 int SF_Resolved ;
 int WRC_Abort ;
 int WRC_Prune ;
 int assert (int) ;
 int memset (TYPE_7__*,int ,int) ;
 scalar_t__ resolveCompoundOrderBy (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ resolveOrderGroupBy (TYPE_7__*,TYPE_5__*,TYPE_8__*,char*) ;
 int sqlite3ErrorMsg (TYPE_6__*,char*) ;
 scalar_t__ sqlite3ResolveExprNames (TYPE_7__*,int *) ;
 int sqlite3ResolveSelectNames (TYPE_6__*,scalar_t__,TYPE_7__*) ;
 int sqlite3SelectPrep (TYPE_6__*,TYPE_5__*,TYPE_7__*) ;

__attribute__((used)) static int resolveSelectStep(Walker *pWalker, Select *p){
  NameContext *pOuterNC;
  NameContext sNC;
  int isCompound;
  int nCompound;
  Parse *pParse;
  ExprList *pEList;
  int i;
  ExprList *pGroupBy;
  Select *pLeftmost;
  sqlite3 *db;


  assert( p!=0 );
  if( p->selFlags & SF_Resolved ){
    return WRC_Prune;
  }
  pOuterNC = pWalker->u.pNC;
  pParse = pWalker->pParse;
  db = pParse->db;
  if( (p->selFlags & SF_Expanded)==0 ){
    sqlite3SelectPrep(pParse, p, pOuterNC);
    return (pParse->nErr || db->mallocFailed) ? WRC_Abort : WRC_Prune;
  }

  isCompound = p->pPrior!=0;
  nCompound = 0;
  pLeftmost = p;
  while( p ){
    assert( (p->selFlags & SF_Expanded)!=0 );
    assert( (p->selFlags & SF_Resolved)==0 );
    p->selFlags |= SF_Resolved;




    memset(&sNC, 0, sizeof(sNC));
    sNC.pParse = pParse;
    if( sqlite3ResolveExprNames(&sNC, p->pLimit) ||
        sqlite3ResolveExprNames(&sNC, p->pOffset) ){
      return WRC_Abort;
    }



    for(i=0; i<p->pSrc->nSrc; i++){
      struct SrcList_item *pItem = &p->pSrc->a[i];
      if( pItem->pSelect ){
        NameContext *pNC;
        int nRef = 0;
        const char *zSavedContext = pParse->zAuthContext;






        for(pNC=pOuterNC; pNC; pNC=pNC->pNext) nRef += pNC->nRef;

        if( pItem->zName ) pParse->zAuthContext = pItem->zName;
        sqlite3ResolveSelectNames(pParse, pItem->pSelect, pOuterNC);
        pParse->zAuthContext = zSavedContext;
        if( pParse->nErr || db->mallocFailed ) return WRC_Abort;

        for(pNC=pOuterNC; pNC; pNC=pNC->pNext) nRef -= pNC->nRef;
        assert( pItem->isCorrelated==0 && nRef<=0 );
        pItem->isCorrelated = (nRef!=0);
      }
    }




    sNC.ncFlags = NC_AllowAgg;
    sNC.pSrcList = p->pSrc;
    sNC.pNext = pOuterNC;


    pEList = p->pEList;
    assert( pEList!=0 );
    for(i=0; i<pEList->nExpr; i++){
      Expr *pX = pEList->a[i].pExpr;
      if( sqlite3ResolveExprNames(&sNC, pX) ){
        return WRC_Abort;
      }
    }




    assert( (p->selFlags & SF_Aggregate)==0 );
    pGroupBy = p->pGroupBy;
    if( pGroupBy || (sNC.ncFlags & NC_HasAgg)!=0 ){
      p->selFlags |= SF_Aggregate;
    }else{
      sNC.ncFlags &= ~NC_AllowAgg;
    }



    if( p->pHaving && !pGroupBy ){
      sqlite3ErrorMsg(pParse, "a GROUP BY clause is required before HAVING");
      return WRC_Abort;
    }
    sNC.pEList = p->pEList;
    sNC.ncFlags |= NC_AsMaybe;
    if( sqlite3ResolveExprNames(&sNC, p->pHaving) ) return WRC_Abort;
    if( sqlite3ResolveExprNames(&sNC, p->pWhere) ) return WRC_Abort;
    sNC.ncFlags &= ~NC_AsMaybe;




    sNC.pNext = 0;
    sNC.ncFlags |= NC_AllowAgg;






    if( !isCompound && resolveOrderGroupBy(&sNC, p, p->pOrderBy, "ORDER") ){
      return WRC_Abort;
    }
    if( db->mallocFailed ){
      return WRC_Abort;
    }




    if( pGroupBy ){
      struct ExprList_item *pItem;

      if( resolveOrderGroupBy(&sNC, p, pGroupBy, "GROUP") || db->mallocFailed ){
        return WRC_Abort;
      }
      for(i=0, pItem=pGroupBy->a; i<pGroupBy->nExpr; i++, pItem++){
        if( ExprHasProperty(pItem->pExpr, EP_Agg) ){
          sqlite3ErrorMsg(pParse, "aggregate functions are not allowed in "
              "the GROUP BY clause");
          return WRC_Abort;
        }
      }
    }



    p = p->pPrior;
    nCompound++;
  }




  if( isCompound && resolveCompoundOrderBy(pParse, pLeftmost) ){
    return WRC_Abort;
  }

  return WRC_Prune;
}
