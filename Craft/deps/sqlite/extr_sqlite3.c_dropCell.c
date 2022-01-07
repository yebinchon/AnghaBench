
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_7__ {int nCell; int hdrOffset; int nFree; int * aCellIdx; TYPE_1__* pBt; int * aData; int pDbPage; } ;
struct TYPE_6__ {scalar_t__ usableSize; int mutex; } ;
typedef TYPE_2__ MemPage ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_PTR_TO_INT (int *) ;
 int assert (int) ;
 int cellSize (TYPE_2__*,int) ;
 int freeSpace (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ get2byte (int *) ;
 int put2byte (int *,int) ;
 int sqlite3PagerIswriteable (int ) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

__attribute__((used)) static void dropCell(MemPage *pPage, int idx, int sz, int *pRC){
  u32 pc;
  u8 *data;
  u8 *ptr;
  u8 *endPtr;
  int rc;
  int hdr;

  if( *pRC ) return;

  assert( idx>=0 && idx<pPage->nCell );
  assert( sz==cellSize(pPage, idx) );
  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  data = pPage->aData;
  ptr = &pPage->aCellIdx[2*idx];
  pc = get2byte(ptr);
  hdr = pPage->hdrOffset;
  testcase( pc==get2byte(&data[hdr+5]) );
  testcase( pc+sz==pPage->pBt->usableSize );
  if( pc < (u32)get2byte(&data[hdr+5]) || pc+sz > pPage->pBt->usableSize ){
    *pRC = SQLITE_CORRUPT_BKPT;
    return;
  }
  rc = freeSpace(pPage, pc, sz);
  if( rc ){
    *pRC = rc;
    return;
  }
  endPtr = &pPage->aCellIdx[2*pPage->nCell - 2];
  assert( (SQLITE_PTR_TO_INT(ptr)&1)==0 );
  while( ptr<endPtr ){
    *(u16*)ptr = *(u16*)&ptr[2];
    ptr += 2;
  }
  pPage->nCell--;
  put2byte(&data[hdr+3], pPage->nCell);
  pPage->nFree += 2;
}
