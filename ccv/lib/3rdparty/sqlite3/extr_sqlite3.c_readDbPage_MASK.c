#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int i64 ;
struct TYPE_9__ {scalar_t__ eState; int /*<<< orphan*/  nRead; int /*<<< orphan*/  dbFileVers; scalar_t__ pageSize; int /*<<< orphan*/  fd; int /*<<< orphan*/  pWal; } ;
struct TYPE_8__ {int pgno; scalar_t__ pData; TYPE_2__* pPager; } ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MEMDB ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGER_READER ; 
 int SQLITE_IOERR_SHORT_READ ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  sqlite3_pager_readdb_count ; 

__attribute__((used)) static int FUNC14(PgHdr *pPg){
  Pager *pPager = pPg->pPager; /* Pager object associated with page pPg */
  int rc = SQLITE_OK;          /* Return code */

#ifndef SQLITE_OMIT_WAL
  u32 iFrame = 0;              /* Frame of WAL containing pgno */

  FUNC5( pPager->eState>=PAGER_READER && !MEMDB );
  FUNC5( FUNC6(pPager->fd) );

  if( FUNC9(pPager) ){
    rc = FUNC12(pPager->pWal, pPg->pgno, &iFrame);
    if( rc ) return rc;
  }
  if( iFrame ){
    rc = FUNC13(pPager->pWal, iFrame,pPager->pageSize,pPg->pData);
  }else
#endif
  {
    i64 iOffset = (pPg->pgno-1)*(i64)pPager->pageSize;
    rc = FUNC11(pPager->fd, pPg->pData, pPager->pageSize, iOffset);
    if( rc==SQLITE_IOERR_SHORT_READ ){
      rc = SQLITE_OK;
    }
  }

  if( pPg->pgno==1 ){
    if( rc ){
      /* If the read is unsuccessful, set the dbFileVers[] to something
      ** that will never be a valid file version.  dbFileVers[] is a copy
      ** of bytes 24..39 of the database.  Bytes 28..31 should always be
      ** zero or the size of the database in page. Bytes 32..35 and 35..39
      ** should be page numbers which are never 0xffffffff.  So filling
      ** pPager->dbFileVers[] with all 0xff bytes should suffice.
      **
      ** For an encrypted database, the situation is more complex:  bytes
      ** 24..39 of the database are white noise.  But the probability of
      ** white noise equaling 16 bytes of 0xff is vanishingly small so
      ** we should still be ok.
      */
      FUNC8(pPager->dbFileVers, 0xff, sizeof(pPager->dbFileVers));
    }else{
      u8 *dbFileVers = &((u8*)pPg->pData)[24];
      FUNC7(&pPager->dbFileVers, dbFileVers, sizeof(pPager->dbFileVers));
    }
  }
  FUNC0(pPager, pPg->pData, pPg->pgno, 3, rc = SQLITE_NOMEM_BKPT);

  FUNC4(sqlite3_pager_readdb_count);
  FUNC4(pPager->nRead);
  FUNC1(("PGIN %p %d\n", pPager, pPg->pgno));
  FUNC3(("FETCH %d page %d hash(%08x)\n",
               FUNC2(pPager), pPg->pgno, FUNC10(pPg)));

  return rc;
}