
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int autoVacuum; scalar_t__ usableSize; int pPager; int mutex; } ;
typedef scalar_t__ Pgno ;
typedef int DbPage ;
typedef TYPE_1__ BtShared ;


 int PENDING_BYTE_PAGE (TYPE_1__*) ;
 scalar_t__ PTRMAP_ISPAGE (TYPE_1__*,int ) ;
 scalar_t__ PTRMAP_PAGENO (TYPE_1__*,scalar_t__) ;
 int PTRMAP_PTROFFSET (scalar_t__,scalar_t__) ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int TRACE (char*) ;
 int assert (int) ;
 scalar_t__ get4byte (scalar_t__*) ;
 int put4byte (scalar_t__*,scalar_t__) ;
 int sqlite3PagerGet (int ,scalar_t__,int **) ;
 scalar_t__ sqlite3PagerGetData (int *) ;
 int sqlite3PagerUnref (int *) ;
 int sqlite3PagerWrite (int *) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void ptrmapPut(BtShared *pBt, Pgno key, u8 eType, Pgno parent, int *pRC){
  DbPage *pDbPage;
  u8 *pPtrmap;
  Pgno iPtrmap;
  int offset;
  int rc;

  if( *pRC ) return;

  assert( sqlite3_mutex_held(pBt->mutex) );

  assert( 0==PTRMAP_ISPAGE(pBt, PENDING_BYTE_PAGE(pBt)) );

  assert( pBt->autoVacuum );
  if( key==0 ){
    *pRC = SQLITE_CORRUPT_BKPT;
    return;
  }
  iPtrmap = PTRMAP_PAGENO(pBt, key);
  rc = sqlite3PagerGet(pBt->pPager, iPtrmap, &pDbPage);
  if( rc!=SQLITE_OK ){
    *pRC = rc;
    return;
  }
  offset = PTRMAP_PTROFFSET(iPtrmap, key);
  if( offset<0 ){
    *pRC = SQLITE_CORRUPT_BKPT;
    goto ptrmap_exit;
  }
  assert( offset <= (int)pBt->usableSize-5 );
  pPtrmap = (u8 *)sqlite3PagerGetData(pDbPage);

  if( eType!=pPtrmap[offset] || get4byte(&pPtrmap[offset+1])!=parent ){
    TRACE(("PTRMAP_UPDATE: %d->(%d,%d)\n", key, eType, parent));
    *pRC= rc = sqlite3PagerWrite(pDbPage);
    if( rc==SQLITE_OK ){
      pPtrmap[offset] = eType;
      put4byte(&pPtrmap[offset+1], parent);
    }
  }

ptrmap_exit:
  sqlite3PagerUnref(pDbPage);
}
