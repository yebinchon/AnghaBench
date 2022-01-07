
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct WalSegment {int dummy; } ;
typedef scalar_t__ ht_slot ;
struct TYPE_12__ {int nSegment; TYPE_2__* aSegment; } ;
typedef TYPE_3__ WalIterator ;
struct TYPE_10__ {scalar_t__ mxFrame; } ;
struct TYPE_13__ {TYPE_1__ hdr; scalar_t__ ckptLock; } ;
typedef TYPE_4__ Wal ;
struct TYPE_11__ {int iZero; int nEntry; int* aPgno; scalar_t__* aIndex; } ;


 int HASHTABLE_NPAGE ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3ScratchFree (scalar_t__*) ;
 scalar_t__ sqlite3ScratchMalloc (int) ;
 int walFramePage (int) ;
 int walHashGet (TYPE_4__*,int,scalar_t__ volatile**,int volatile**,int*) ;
 int walIteratorFree (TYPE_3__*) ;
 int walMergesort (int*,scalar_t__*,scalar_t__*,int*) ;

__attribute__((used)) static int walIteratorInit(Wal *pWal, WalIterator **pp){
  WalIterator *p;
  int nSegment;
  u32 iLast;
  int nByte;
  int i;
  ht_slot *aTmp;
  int rc = SQLITE_OK;




  assert( pWal->ckptLock && pWal->hdr.mxFrame>0 );
  iLast = pWal->hdr.mxFrame;


  nSegment = walFramePage(iLast) + 1;
  nByte = sizeof(WalIterator)
        + (nSegment-1)*sizeof(struct WalSegment)
        + iLast*sizeof(ht_slot);
  p = (WalIterator *)sqlite3ScratchMalloc(nByte);
  if( !p ){
    return SQLITE_NOMEM;
  }
  memset(p, 0, nByte);
  p->nSegment = nSegment;




  aTmp = (ht_slot *)sqlite3ScratchMalloc(
      sizeof(ht_slot) * (iLast>HASHTABLE_NPAGE?HASHTABLE_NPAGE:iLast)
  );
  if( !aTmp ){
    rc = SQLITE_NOMEM;
  }

  for(i=0; rc==SQLITE_OK && i<nSegment; i++){
    volatile ht_slot *aHash;
    u32 iZero;
    volatile u32 *aPgno;

    rc = walHashGet(pWal, i, &aHash, &aPgno, &iZero);
    if( rc==SQLITE_OK ){
      int j;
      int nEntry;
      ht_slot *aIndex;

      aPgno++;
      if( (i+1)==nSegment ){
        nEntry = (int)(iLast - iZero);
      }else{
        nEntry = (int)((u32*)aHash - (u32*)aPgno);
      }
      aIndex = &((ht_slot *)&p->aSegment[p->nSegment])[iZero];
      iZero++;

      for(j=0; j<nEntry; j++){
        aIndex[j] = (ht_slot)j;
      }
      walMergesort((u32 *)aPgno, aTmp, aIndex, &nEntry);
      p->aSegment[i].iZero = iZero;
      p->aSegment[i].nEntry = nEntry;
      p->aSegment[i].aIndex = aIndex;
      p->aSegment[i].aPgno = (u32 *)aPgno;
    }
  }
  sqlite3ScratchFree(aTmp);

  if( rc!=SQLITE_OK ){
    walIteratorFree(p);
  }
  *pp = p;
  return rc;
}
