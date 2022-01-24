#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct TYPE_14__ {TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int i64 ;
struct TYPE_15__ {int iReadOff; int nAlloc; int nBuffer; int iEof; int /*<<< orphan*/ * aBuffer; int /*<<< orphan*/ * aAlloc; int /*<<< orphan*/  pFile; } ;
typedef  TYPE_3__ VdbeSorterIter ;
struct TYPE_16__ {int iWriteOff; int /*<<< orphan*/  pTemp1; } ;
typedef  TYPE_4__ VdbeSorter ;
struct TYPE_13__ {int /*<<< orphan*/  pBt; } ;

/* Variables and functions */
 int SQLITE_IOERR_SHORT_READ ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_3__*,int*) ; 

__attribute__((used)) static int FUNC6(
  sqlite3 *db,                    /* Database handle */
  const VdbeSorter *pSorter,      /* Sorter object */
  i64 iStart,                     /* Start offset in pFile */
  VdbeSorterIter *pIter,          /* Iterator to populate */
  i64 *pnByte                     /* IN/OUT: Increment this value by PMA size */
){
  int rc = SQLITE_OK;
  int nBuf;

  nBuf = FUNC1(db->aDb[0].pBt);

  FUNC0( pSorter->iWriteOff>iStart );
  FUNC0( pIter->aAlloc==0 );
  FUNC0( pIter->aBuffer==0 );
  pIter->pFile = pSorter->pTemp1;
  pIter->iReadOff = iStart;
  pIter->nAlloc = 128;
  pIter->aAlloc = (u8 *)FUNC2(db, pIter->nAlloc);
  pIter->nBuffer = nBuf;
  pIter->aBuffer = (u8 *)FUNC2(db, nBuf);

  if( !pIter->aBuffer ){
    rc = SQLITE_NOMEM;
  }else{
    int iBuf;

    iBuf = iStart % nBuf;
    if( iBuf ){
      int nRead = nBuf - iBuf;
      if( (iStart + nRead) > pSorter->iWriteOff ){
        nRead = (int)(pSorter->iWriteOff - iStart);
      }
      rc = FUNC3(
          pSorter->pTemp1, &pIter->aBuffer[iBuf], nRead, iStart
      );
      FUNC0( rc!=SQLITE_IOERR_SHORT_READ );
    }

    if( rc==SQLITE_OK ){
      u64 nByte;                       /* Size of PMA in bytes */
      pIter->iEof = pSorter->iWriteOff;
      rc = FUNC5(db, pIter, &nByte);
      pIter->iEof = pIter->iReadOff + nByte;
      *pnByte += nByte;
    }
  }

  if( rc==SQLITE_OK ){
    rc = FUNC4(db, pIter);
  }
  return rc;
}