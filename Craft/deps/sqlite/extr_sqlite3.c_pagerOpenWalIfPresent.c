
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ eState; scalar_t__ eLock; scalar_t__ journalMode; int pPCache; int zWal; int pVfs; int tempFile; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_JOURNALMODE_DELETE ;
 scalar_t__ PAGER_JOURNALMODE_WAL ;
 scalar_t__ PAGER_OPEN ;
 scalar_t__ SHARED_LOCK ;
 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_IOERR_DELETE_NOENT ;
 int SQLITE_OK ;
 int assert (int) ;
 int pagerPagecount (TYPE_1__*,scalar_t__*) ;
 int sqlite3OsAccess (int ,int ,int ,int*) ;
 int sqlite3OsDelete (int ,int ,int ) ;
 int sqlite3PagerOpenWal (TYPE_1__*,int ) ;
 scalar_t__ sqlite3PcachePagecount (int ) ;
 int testcase (int) ;

__attribute__((used)) static int pagerOpenWalIfPresent(Pager *pPager){
  int rc = SQLITE_OK;
  assert( pPager->eState==PAGER_OPEN );
  assert( pPager->eLock>=SHARED_LOCK );

  if( !pPager->tempFile ){
    int isWal;
    Pgno nPage;

    rc = pagerPagecount(pPager, &nPage);
    if( rc ) return rc;
    if( nPage==0 ){
      rc = sqlite3OsDelete(pPager->pVfs, pPager->zWal, 0);
      if( rc==SQLITE_IOERR_DELETE_NOENT ) rc = SQLITE_OK;
      isWal = 0;
    }else{
      rc = sqlite3OsAccess(
          pPager->pVfs, pPager->zWal, SQLITE_ACCESS_EXISTS, &isWal
      );
    }
    if( rc==SQLITE_OK ){
      if( isWal ){
        testcase( sqlite3PcachePagecount(pPager->pPCache)==0 );
        rc = sqlite3PagerOpenWal(pPager, 0);
      }else if( pPager->journalMode==PAGER_JOURNALMODE_WAL ){
        pPager->journalMode = PAGER_JOURNALMODE_DELETE;
      }
    }
  }
  return rc;
}
