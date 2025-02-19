
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ pExtra; } ;
typedef TYPE_1__ sqlite3_pcache_page ;
typedef int sqlite3_pcache ;
struct TYPE_18__ {scalar_t__ bPurgeable; int nMin; unsigned int nHash; unsigned int nPage; unsigned int nRecyclable; int n90pct; int nMax; int szPage; int szExtra; unsigned int iMaxKey; TYPE_2__** apHash; TYPE_3__* pGroup; } ;
struct TYPE_17__ {unsigned int mxPinned; unsigned int nMaxPage; unsigned int nMinPage; scalar_t__ nCurrentPage; TYPE_2__* pLruTail; } ;
struct TYPE_16__ {unsigned int iKey; TYPE_1__ page; scalar_t__ pLruNext; scalar_t__ pLruPrev; TYPE_4__* pCache; struct TYPE_16__* pNext; } ;
typedef TYPE_2__ PgHdr1 ;
typedef TYPE_3__ PGroup ;
typedef TYPE_4__ PCache1 ;


 int assert (int) ;
 TYPE_2__* pcache1AllocPage (TYPE_4__*) ;
 int pcache1EnterMutex (TYPE_3__*) ;
 int pcache1FreePage (TYPE_2__*) ;
 int pcache1LeaveMutex (TYPE_3__*) ;
 int pcache1PinPage (TYPE_2__*) ;
 int pcache1RemoveFromHash (TYPE_2__*) ;
 scalar_t__ pcache1ResizeHash (TYPE_4__*) ;
 scalar_t__ pcache1UnderMemoryPressure (TYPE_4__*) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;

__attribute__((used)) static sqlite3_pcache_page *pcache1Fetch(
  sqlite3_pcache *p,
  unsigned int iKey,
  int createFlag
){
  unsigned int nPinned;
  PCache1 *pCache = (PCache1 *)p;
  PGroup *pGroup;
  PgHdr1 *pPage = 0;

  assert( pCache->bPurgeable || createFlag!=1 );
  assert( pCache->bPurgeable || pCache->nMin==0 );
  assert( pCache->bPurgeable==0 || pCache->nMin==10 );
  assert( pCache->nMin==0 || pCache->bPurgeable );
  pcache1EnterMutex(pGroup = pCache->pGroup);


  if( pCache->nHash>0 ){
    unsigned int h = iKey % pCache->nHash;
    for(pPage=pCache->apHash[h]; pPage&&pPage->iKey!=iKey; pPage=pPage->pNext);
  }


  if( pPage || createFlag==0 ){
    pcache1PinPage(pPage);
    goto fetch_out;
  }
  assert( pCache->nPage >= pCache->nRecyclable );
  nPinned = pCache->nPage - pCache->nRecyclable;
  assert( pGroup->mxPinned == pGroup->nMaxPage + 10 - pGroup->nMinPage );
  assert( pCache->n90pct == pCache->nMax*9/10 );
  if( createFlag==1 && (
        nPinned>=pGroup->mxPinned
     || nPinned>=pCache->n90pct
     || pcache1UnderMemoryPressure(pCache)
  )){
    goto fetch_out;
  }

  if( pCache->nPage>=pCache->nHash && pcache1ResizeHash(pCache) ){
    goto fetch_out;
  }


  if( pCache->bPurgeable && pGroup->pLruTail && (
         (pCache->nPage+1>=pCache->nMax)
      || pGroup->nCurrentPage>=pGroup->nMaxPage
      || pcache1UnderMemoryPressure(pCache)
  )){
    PCache1 *pOther;
    pPage = pGroup->pLruTail;
    pcache1RemoveFromHash(pPage);
    pcache1PinPage(pPage);
    pOther = pPage->pCache;



    assert( (pCache->szPage & (pCache->szPage-1))==0 && pCache->szPage>=512 );
    assert( pCache->szExtra<512 );
    assert( (pOther->szPage & (pOther->szPage-1))==0 && pOther->szPage>=512 );
    assert( pOther->szExtra<512 );

    if( pOther->szPage+pOther->szExtra != pCache->szPage+pCache->szExtra ){
      pcache1FreePage(pPage);
      pPage = 0;
    }else{
      pGroup->nCurrentPage -= (pOther->bPurgeable - pCache->bPurgeable);
    }
  }




  if( !pPage ){
    if( createFlag==1 ) sqlite3BeginBenignMalloc();
    pPage = pcache1AllocPage(pCache);
    if( createFlag==1 ) sqlite3EndBenignMalloc();
  }

  if( pPage ){
    unsigned int h = iKey % pCache->nHash;
    pCache->nPage++;
    pPage->iKey = iKey;
    pPage->pNext = pCache->apHash[h];
    pPage->pCache = pCache;
    pPage->pLruPrev = 0;
    pPage->pLruNext = 0;
    *(void **)pPage->page.pExtra = 0;
    pCache->apHash[h] = pPage;
  }

fetch_out:
  if( pPage && iKey>pCache->iMaxKey ){
    pCache->iMaxKey = iKey;
  }
  pcache1LeaveMutex(pGroup);
  return &pPage->page;
}
