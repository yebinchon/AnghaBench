
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_16__ {int usableSize; int mutex; } ;
struct TYPE_15__ {int nOverflow; scalar_t__ nCell; int (* xCellSize ) (TYPE_1__*,int *) ;int* aData; int nFree; int cellOffset; int minLocal; int hdrOffset; int pgno; int pDbPage; int ** apOvfl; TYPE_2__* pBt; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtShared ;


 scalar_t__ ISAUTOVACUUM ;
 scalar_t__ NEVER (int) ;
 int PTF_INTKEY ;
 int PTF_LEAF ;
 int PTF_LEAFDATA ;
 int PTRMAP_BTREE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int allocateBtreePage (TYPE_2__* const,TYPE_1__**,int *,int ,int ) ;
 int assert (int) ;
 int * findCell (TYPE_1__*,scalar_t__) ;
 int insertCell (TYPE_1__*,scalar_t__,int *,int,int ,int ,int*) ;
 int ptrmapPut (TYPE_2__* const,int ,int ,int ,int*) ;
 int ptrmapPutOvflPtr (TYPE_1__*,int *,int*) ;
 int put4byte (int*,int ) ;
 int rebuildPage (TYPE_1__*,int,int **,int*) ;
 int releasePage (TYPE_1__*) ;
 int sqlite3PagerIswriteable (int ) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (TYPE_1__*,int *) ;
 int zeroPage (TYPE_1__*,int) ;

__attribute__((used)) static int balance_quick(MemPage *pParent, MemPage *pPage, u8 *pSpace){
  BtShared *const pBt = pPage->pBt;
  MemPage *pNew;
  int rc;
  Pgno pgnoNew;

  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( sqlite3PagerIswriteable(pParent->pDbPage) );
  assert( pPage->nOverflow==1 );


  if( NEVER(pPage->nCell==0) ) return SQLITE_CORRUPT_BKPT;





  rc = allocateBtreePage(pBt, &pNew, &pgnoNew, 0, 0);

  if( rc==SQLITE_OK ){

    u8 *pOut = &pSpace[4];
    u8 *pCell = pPage->apOvfl[0];
    u16 szCell = pPage->xCellSize(pPage, pCell);
    u8 *pStop;

    assert( sqlite3PagerIswriteable(pNew->pDbPage) );
    assert( pPage->aData[0]==(PTF_INTKEY|PTF_LEAFDATA|PTF_LEAF) );
    zeroPage(pNew, PTF_INTKEY|PTF_LEAFDATA|PTF_LEAF);
    rc = rebuildPage(pNew, 1, &pCell, &szCell);
    if( NEVER(rc) ) return rc;
    pNew->nFree = pBt->usableSize - pNew->cellOffset - 2 - szCell;
    if( ISAUTOVACUUM ){
      ptrmapPut(pBt, pgnoNew, PTRMAP_BTREE, pParent->pgno, &rc);
      if( szCell>pNew->minLocal ){
        ptrmapPutOvflPtr(pNew, pCell, &rc);
      }
    }
    pCell = findCell(pPage, pPage->nCell-1);
    pStop = &pCell[9];
    while( (*(pCell++)&0x80) && pCell<pStop );
    pStop = &pCell[9];
    while( ((*(pOut++) = *(pCell++))&0x80) && pCell<pStop );


    if( rc==SQLITE_OK ){
      insertCell(pParent, pParent->nCell, pSpace, (int)(pOut-pSpace),
                   0, pPage->pgno, &rc);
    }


    put4byte(&pParent->aData[pParent->hdrOffset+8], pgnoNew);


    releasePage(pNew);
  }

  return rc;
}
