#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int errCode; scalar_t__ eState; scalar_t__ dbSize; scalar_t__ doNotSyncSpill; scalar_t__ doNotSpill; } ;
struct TYPE_15__ {int flags; scalar_t__ pgno; scalar_t__ pDirty; TYPE_2__* pPager; } ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ PAGER_WRITER_CACHEMOD ; 
 int PGHDR_DIRTY ; 
 int PGHDR_NEED_SYNC ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC12(void *p, PgHdr *pPg){
  Pager *pPager = (Pager *)p;
  int rc = SQLITE_OK;

  FUNC3( pPg->pPager==pPager );
  FUNC3( pPg->flags&PGHDR_DIRTY );

  /* The doNotSyncSpill flag is set during times when doing a sync of
  ** journal (and adding a new header) is not allowed.  This occurs
  ** during calls to sqlite3PagerWrite() while trying to journal multiple
  ** pages belonging to the same sector.
  **
  ** The doNotSpill flag inhibits all cache spilling regardless of whether
  ** or not a sync is required.  This is set during a rollback.
  **
  ** Spilling is also prohibited when in an error state since that could
  ** lead to database corruption.   In the current implementaton it 
  ** is impossible for sqlite3PcacheFetch() to be called with createFlag==1
  ** while in the error state, hence it is impossible for this routine to
  ** be called in the error state.  Nevertheless, we include a NEVER()
  ** test for the error state as a safeguard against future changes.
  */
  if( FUNC0(pPager->errCode) ) return SQLITE_OK;
  if( pPager->doNotSpill ) return SQLITE_OK;
  if( pPager->doNotSyncSpill && (pPg->flags & PGHDR_NEED_SYNC)!=0 ){
    return SQLITE_OK;
  }

  pPg->pDirty = 0;
  if( FUNC4(pPager) ){
    /* Write a single frame for this page to the log. */
    if( FUNC9(pPg) ){ 
      rc = FUNC10(pPg); 
    }
    if( rc==SQLITE_OK ){
      rc = FUNC5(pPager, pPg, 0, 0);
    }
  }else{
  
    /* Sync the journal file if required. */
    if( pPg->flags&PGHDR_NEED_SYNC 
     || pPager->eState==PAGER_WRITER_CACHEMOD
    ){
      rc = FUNC11(pPager, 1);
    }
  
    /* If the page number of this page is larger than the current size of
    ** the database image, it may need to be written to the sub-journal.
    ** This is because the call to pager_write_pagelist() below will not
    ** actually write data to the file in this case.
    **
    ** Consider the following sequence of events:
    **
    **   BEGIN;
    **     <journal page X>
    **     <modify page X>
    **     SAVEPOINT sp;
    **       <shrink database file to Y pages>
    **       pagerStress(page X)
    **     ROLLBACK TO sp;
    **
    ** If (X>Y), then when pagerStress is called page X will not be written
    ** out to the database file, but will be dropped from the cache. Then,
    ** following the "ROLLBACK TO sp" statement, reading page X will read
    ** data from the database file. This will be the copy of page X as it
    ** was when the transaction started, not as it was when "SAVEPOINT sp"
    ** was executed.
    **
    ** The solution is to write the current data for page X into the 
    ** sub-journal file now (if it is not already there), so that it will
    ** be restored to its current value when the "ROLLBACK TO sp" is 
    ** executed.
    */
    if( FUNC0(
        rc==SQLITE_OK && pPg->pgno>pPager->dbSize && FUNC9(pPg)
    ) ){
      rc = FUNC10(pPg);
    }
  
    /* Write the contents of the page out to the database file. */
    if( rc==SQLITE_OK ){
      FUNC3( (pPg->flags&PGHDR_NEED_SYNC)==0 );
      rc = FUNC7(pPager, pPg);
    }
  }

  /* Mark the page as clean. */
  if( rc==SQLITE_OK ){
    FUNC2(("STRESS %d page %d\n", FUNC1(pPager), pPg->pgno));
    FUNC8(pPg);
  }

  return FUNC6(pPager, rc); 
}