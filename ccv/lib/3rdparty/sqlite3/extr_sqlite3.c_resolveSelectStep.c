
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_22__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_13__ ;
typedef struct TYPE_33__ TYPE_11__ ;
typedef struct TYPE_32__ TYPE_10__ ;


struct TYPE_35__ {TYPE_22__* pFuncArg; } ;
struct TYPE_39__ {int isCorrelated; scalar_t__ isTabFunc; } ;
struct SrcList_item {char* zName; TYPE_8__* pSelect; TYPE_1__ u1; TYPE_4__ fg; } ;
struct ExprList_item {int pExpr; } ;
struct TYPE_41__ {scalar_t__ mallocFailed; } ;
typedef TYPE_6__ sqlite3 ;
typedef int sNC ;
struct TYPE_38__ {TYPE_10__* pNC; } ;
struct TYPE_42__ {TYPE_9__* pParse; TYPE_3__ u; } ;
typedef TYPE_7__ Walker ;
struct TYPE_44__ {char* zAuthContext; scalar_t__ nErr; TYPE_6__* db; } ;
struct TYPE_43__ {int selFlags; scalar_t__ pOrderBy; struct TYPE_43__* pPrior; TYPE_13__* pNext; TYPE_22__* pEList; TYPE_5__* pSrc; int pWhere; int pHaving; TYPE_11__* pGroupBy; int pLimit; } ;
struct TYPE_40__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_37__ {scalar_t__ nExpr; } ;
struct TYPE_36__ {scalar_t__ nExpr; } ;
struct TYPE_34__ {TYPE_2__* pEList; } ;
struct TYPE_33__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_32__ {int ncFlags; struct TYPE_32__* pNext; TYPE_22__* pEList; TYPE_5__* pSrcList; scalar_t__ nRef; TYPE_9__* pParse; } ;
typedef TYPE_8__ Select ;
typedef TYPE_9__ Parse ;
typedef TYPE_10__ NameContext ;
typedef TYPE_11__ ExprList ;


 int EP_Agg ;
 scalar_t__ ExprHasProperty (int ,int ) ;
 int NC_AllowAgg ;
 int NC_HasAgg ;
 int NC_MinMaxAgg ;
 int SF_Aggregate ;
 int SF_Converted ;
 int SF_Expanded ;
 int SF_MinMaxAgg ;
 int SF_Resolved ;
 int WRC_Abort ;
 int WRC_Prune ;
 int assert (int) ;
 int memset (TYPE_10__*,int ,int) ;
 scalar_t__ resolveCompoundOrderBy (TYPE_9__*,TYPE_8__*) ;
 scalar_t__ resolveOrderGroupBy (TYPE_10__*,TYPE_8__*,TYPE_11__*,char*) ;
 int sqlite3ErrorMsg (TYPE_9__*,char*) ;
 scalar_t__ sqlite3ResolveExprListNames (TYPE_10__*,TYPE_22__*) ;
 scalar_t__ sqlite3ResolveExprNames (TYPE_10__*,int ) ;
 int sqlite3ResolveSelectNames (TYPE_9__*,TYPE_8__*,TYPE_10__*) ;
 int sqlite3SelectPrep (TYPE_9__*,TYPE_8__*,TYPE_10__*) ;
 int sqlite3SelectWrongNumTermsError (TYPE_9__*,TYPE_13__*) ;

__attribute__((used)) static int resolveSelectStep(Walker *pWalker, Select *p){
  NameContext *pOuterNC;
  NameContext sNC;
  int isCompound;
  int nCompound;
  Parse *pParse;
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
    if( sqlite3ResolveExprNames(&sNC, p->pLimit) ){
      return WRC_Abort;
    }







    if( p->selFlags & SF_Converted ){
      Select *pSub = p->pSrc->a[0].pSelect;
      assert( p->pSrc->nSrc==1 && p->pOrderBy );
      assert( pSub->pPrior && pSub->pOrderBy==0 );
      pSub->pOrderBy = p->pOrderBy;
      p->pOrderBy = 0;
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
        assert( pItem->fg.isCorrelated==0 && nRef<=0 );
        pItem->fg.isCorrelated = (nRef!=0);
      }
    }




    sNC.ncFlags = NC_AllowAgg;
    sNC.pSrcList = p->pSrc;
    sNC.pNext = pOuterNC;


    if( sqlite3ResolveExprListNames(&sNC, p->pEList) ) return WRC_Abort;




    assert( (p->selFlags & SF_Aggregate)==0 );
    pGroupBy = p->pGroupBy;
    if( pGroupBy || (sNC.ncFlags & NC_HasAgg)!=0 ){
      assert( NC_MinMaxAgg==SF_MinMaxAgg );
      p->selFlags |= SF_Aggregate | (sNC.ncFlags&NC_MinMaxAgg);
    }else{
      sNC.ncFlags &= ~NC_AllowAgg;
    }



    if( p->pHaving && !pGroupBy ){
      sqlite3ErrorMsg(pParse, "a GROUP BY clause is required before HAVING");
      return WRC_Abort;
    }
    sNC.pEList = p->pEList;
    if( sqlite3ResolveExprNames(&sNC, p->pHaving) ) return WRC_Abort;
    if( sqlite3ResolveExprNames(&sNC, p->pWhere) ) return WRC_Abort;


    for(i=0; i<p->pSrc->nSrc; i++){
      struct SrcList_item *pItem = &p->pSrc->a[i];
      if( pItem->fg.isTabFunc
       && sqlite3ResolveExprListNames(&sNC, pItem->u1.pFuncArg)
      ){
        return WRC_Abort;
      }
    }




    sNC.pNext = 0;
    sNC.ncFlags |= NC_AllowAgg;






    if( p->selFlags & SF_Converted ){
      Select *pSub = p->pSrc->a[0].pSelect;
      p->pOrderBy = pSub->pOrderBy;
      pSub->pOrderBy = 0;
    }
    if( isCompound<=nCompound
     && resolveOrderGroupBy(&sNC, p, p->pOrderBy, "ORDER")
    ){
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



    if( p->pNext && p->pEList->nExpr!=p->pNext->pEList->nExpr ){
      sqlite3SelectWrongNumTermsError(pParse, p->pNext);
      return WRC_Abort;
    }



    p = p->pPrior;
    nCompound++;
  }




  if( isCompound && resolveCompoundOrderBy(pParse, pLeftmost) ){
    return WRC_Abort;
  }

  return WRC_Prune;
}
