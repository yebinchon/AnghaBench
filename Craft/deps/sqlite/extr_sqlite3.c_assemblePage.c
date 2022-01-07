
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {int usableSize; int mutex; } ;
struct TYPE_4__ {int hdrOffset; scalar_t__ nOverflow; scalar_t__ nCell; int nFree; int * aCellIdx; int pDbPage; TYPE_3__* pBt; int * aData; } ;
typedef TYPE_1__ MemPage ;


 scalar_t__ MX_CELL (TYPE_3__*) ;
 int assert (int) ;
 int const get2byteNotZero (int *) ;
 int memcpy (int *,int *,scalar_t__) ;
 int put2byte (int *,int) ;
 int sqlite3PagerIswriteable (int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void assemblePage(
  MemPage *pPage,
  int nCell,
  u8 **apCell,
  u16 *aSize
){
  int i;
  u8 *pCellptr;
  int cellbody;
  u8 * const data = pPage->aData;
  const int hdr = pPage->hdrOffset;
  const int nUsable = pPage->pBt->usableSize;

  assert( pPage->nOverflow==0 );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( nCell>=0 && nCell<=(int)MX_CELL(pPage->pBt)
            && (int)MX_CELL(pPage->pBt)<=10921);
  assert( sqlite3PagerIswriteable(pPage->pDbPage) );


  assert( pPage->nCell==0 );
  assert( get2byteNotZero(&data[hdr+5])==nUsable );

  pCellptr = &pPage->aCellIdx[nCell*2];
  cellbody = nUsable;
  for(i=nCell-1; i>=0; i--){
    u16 sz = aSize[i];
    pCellptr -= 2;
    cellbody -= sz;
    put2byte(pCellptr, cellbody);
    memcpy(&data[cellbody], apCell[i], sz);
  }
  put2byte(&data[hdr+3], nCell);
  put2byte(&data[hdr+5], cellbody);
  pPage->nFree -= (nCell*2 + nUsable - cellbody);
  pPage->nCell = (u16)nCell;
}
