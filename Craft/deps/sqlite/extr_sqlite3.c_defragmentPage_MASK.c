#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u8 ;
struct TYPE_6__ {scalar_t__ nOverflow; unsigned char* aData; int hdrOffset; int cellOffset; int nCell; int nFree; int /*<<< orphan*/  pDbPage; TYPE_1__* pBt; } ;
struct TYPE_5__ {int usableSize; int /*<<< orphan*/  pPager; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ MemPage ;

/* Variables and functions */
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_MAX_PAGE_SIZE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,unsigned char*) ; 
 int FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(MemPage *pPage){
  int i;                     /* Loop counter */
  int pc;                    /* Address of a i-th cell */
  int hdr;                   /* Offset to the page header */
  int size;                  /* Size of a cell */
  int usableSize;            /* Number of usable bytes on a page */
  int cellOffset;            /* Offset to the cell pointer array */
  int cbrk;                  /* Offset to the cell content area */
  int nCell;                 /* Number of cells on the page */
  unsigned char *data;       /* The page data */
  unsigned char *temp;       /* Temp area for cell content */
  int iCellFirst;            /* First allowable cell index */
  int iCellLast;             /* Last possible cell index */


  FUNC0( FUNC6(pPage->pDbPage) );
  FUNC0( pPage->pBt!=0 );
  FUNC0( pPage->pBt->usableSize <= SQLITE_MAX_PAGE_SIZE );
  FUNC0( pPage->nOverflow==0 );
  FUNC0( FUNC8(pPage->pBt->mutex) );
  temp = FUNC7(pPage->pBt->pPager);
  data = pPage->aData;
  hdr = pPage->hdrOffset;
  cellOffset = pPage->cellOffset;
  nCell = pPage->nCell;
  FUNC0( nCell==FUNC2(&data[hdr+3]) );
  usableSize = pPage->pBt->usableSize;
  cbrk = FUNC2(&data[hdr+5]);
  FUNC3(&temp[cbrk], &data[cbrk], usableSize - cbrk);
  cbrk = usableSize;
  iCellFirst = cellOffset + 2*nCell;
  iCellLast = usableSize - 4;
  for(i=0; i<nCell; i++){
    u8 *pAddr;     /* The i-th cell pointer */
    pAddr = &data[cellOffset + i*2];
    pc = FUNC2(pAddr);
    FUNC9( pc==iCellFirst );
    FUNC9( pc==iCellLast );
#if !defined(SQLITE_ENABLE_OVERSIZE_CELL_CHECK)
    /* These conditions have already been verified in btreeInitPage()
    ** if SQLITE_ENABLE_OVERSIZE_CELL_CHECK is defined 
    */
    if( pc<iCellFirst || pc>iCellLast ){
      return SQLITE_CORRUPT_BKPT;
    }
#endif
    FUNC0( pc>=iCellFirst && pc<=iCellLast );
    size = FUNC1(pPage, &temp[pc]);
    cbrk -= size;
#if defined(SQLITE_ENABLE_OVERSIZE_CELL_CHECK)
    if( cbrk<iCellFirst ){
      return SQLITE_CORRUPT_BKPT;
    }
#else
    if( cbrk<iCellFirst || pc+size>usableSize ){
      return SQLITE_CORRUPT_BKPT;
    }
#endif
    FUNC0( cbrk+size<=usableSize && cbrk>=iCellFirst );
    FUNC9( cbrk+size==usableSize );
    FUNC9( pc+size==usableSize );
    FUNC3(&data[cbrk], &temp[pc], size);
    FUNC5(pAddr, cbrk);
  }
  FUNC0( cbrk>=iCellFirst );
  FUNC5(&data[hdr+5], cbrk);
  data[hdr+1] = 0;
  data[hdr+2] = 0;
  data[hdr+7] = 0;
  FUNC4(&data[iCellFirst], 0, cbrk-iCellFirst);
  FUNC0( FUNC6(pPage->pDbPage) );
  if( cbrk-iCellFirst!=pPage->nFree ){
    return SQLITE_CORRUPT_BKPT;
  }
  return SQLITE_OK;
}