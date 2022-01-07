
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WhereMaskSet ;
struct TYPE_7__ {struct TYPE_7__* pPrior; int pHaving; int pWhere; int pOrderBy; int pGroupBy; int pEList; TYPE_2__* pSrc; } ;
struct TYPE_6__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_5__ {int pOn; TYPE_3__* pSelect; } ;
typedef TYPE_2__ SrcList ;
typedef TYPE_3__ Select ;
typedef int Bitmask ;


 scalar_t__ ALWAYS (int) ;
 int exprListTableUsage (int *,int ) ;
 int exprTableUsage (int *,int ) ;

__attribute__((used)) static Bitmask exprSelectTableUsage(WhereMaskSet *pMaskSet, Select *pS){
  Bitmask mask = 0;
  while( pS ){
    SrcList *pSrc = pS->pSrc;
    mask |= exprListTableUsage(pMaskSet, pS->pEList);
    mask |= exprListTableUsage(pMaskSet, pS->pGroupBy);
    mask |= exprListTableUsage(pMaskSet, pS->pOrderBy);
    mask |= exprTableUsage(pMaskSet, pS->pWhere);
    mask |= exprTableUsage(pMaskSet, pS->pHaving);
    if( ALWAYS(pSrc!=0) ){
      int i;
      for(i=0; i<pSrc->nSrc; i++){
        mask |= exprSelectTableUsage(pMaskSet, pSrc->a[i].pSelect);
        mask |= exprTableUsage(pMaskSet, pSrc->a[i].pOn);
      }
    }
    pS = pS->pPrior;
  }
  return mask;
}
