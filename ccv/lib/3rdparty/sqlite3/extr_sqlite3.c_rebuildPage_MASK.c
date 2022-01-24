#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int const u16 ;
struct TYPE_7__ {int hdrOffset; int const (* xCellSize ) (TYPE_2__*,int /*<<< orphan*/ *) ;int nCell; scalar_t__ nOverflow; TYPE_1__* pBt; int /*<<< orphan*/ * aCellIdx; int /*<<< orphan*/ * aData; } ;
struct TYPE_6__ {int usableSize; int /*<<< orphan*/  pPager; } ;
typedef  TYPE_2__ MemPage ;

/* Variables and functions */
 scalar_t__ CORRUPT_DB ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int const FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int const FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(
  MemPage *pPg,                   /* Edit this page */
  int nCell,                      /* Final number of cells on page */
  u8 **apCell,                    /* Array of cells */
  u16 *szCell                     /* Array of cell sizes */
){
  const int hdr = pPg->hdrOffset;          /* Offset of header on pPg */
  u8 * const aData = pPg->aData;           /* Pointer to data for pPg */
  const int usableSize = pPg->pBt->usableSize;
  u8 * const pEnd = &aData[usableSize];
  int i;
  u8 *pCellptr = pPg->aCellIdx;
  u8 *pTmp = FUNC5(pPg->pBt->pPager);
  u8 *pData;

  i = FUNC2(&aData[hdr+5]);
  FUNC3(&pTmp[i], &aData[i], usableSize - i);

  pData = pEnd;
  for(i=0; i<nCell; i++){
    u8 *pCell = apCell[i];
    if( FUNC0(pCell,aData,pEnd) ){
      pCell = &pTmp[pCell - aData];
    }
    pData -= szCell[i];
    FUNC4(pCellptr, (pData - aData));
    pCellptr += 2;
    if( pData < pCellptr ) return SQLITE_CORRUPT_BKPT;
    FUNC3(pData, pCell, szCell[i]);
    FUNC1( szCell[i]==pPg->xCellSize(pPg, pCell) || CORRUPT_DB );
    FUNC8( szCell[i]!=pPg->xCellSize(pPg,pCell) );
  }

  /* The pPg->nFree field is now set incorrectly. The caller will fix it. */
  pPg->nCell = nCell;
  pPg->nOverflow = 0;

  FUNC4(&aData[hdr+1], 0);
  FUNC4(&aData[hdr+3], pPg->nCell);
  FUNC4(&aData[hdr+5], pData - aData);
  aData[hdr+7] = 0x00;
  return SQLITE_OK;
}