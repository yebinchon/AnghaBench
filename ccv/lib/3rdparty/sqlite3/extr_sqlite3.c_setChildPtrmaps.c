
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int mutex; } ;
struct TYPE_8__ {int nCell; int hdrOffset; int * aData; int leaf; scalar_t__ isInit; TYPE_2__* pBt; int pgno; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtShared ;


 int PTRMAP_BTREE ;
 int SQLITE_OK ;
 int assert (int ) ;
 int btreeInitPage (TYPE_1__*) ;
 int * findCell (TYPE_1__*,int) ;
 int get4byte (int *) ;
 int ptrmapPut (TYPE_2__*,int ,int ,int ,int*) ;
 int ptrmapPutOvflPtr (TYPE_1__*,int *,int*) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int setChildPtrmaps(MemPage *pPage){
  int i;
  int nCell;
  int rc;
  BtShared *pBt = pPage->pBt;
  Pgno pgno = pPage->pgno;

  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  rc = pPage->isInit ? SQLITE_OK : btreeInitPage(pPage);
  if( rc!=SQLITE_OK ) return rc;
  nCell = pPage->nCell;

  for(i=0; i<nCell; i++){
    u8 *pCell = findCell(pPage, i);

    ptrmapPutOvflPtr(pPage, pCell, &rc);

    if( !pPage->leaf ){
      Pgno childPgno = get4byte(pCell);
      ptrmapPut(pBt, childPgno, PTRMAP_BTREE, pgno, &rc);
    }
  }

  if( !pPage->leaf ){
    Pgno childPgno = get4byte(&pPage->aData[pPage->hdrOffset+8]);
    ptrmapPut(pBt, childPgno, PTRMAP_BTREE, pgno, &rc);
  }

  return rc;
}
