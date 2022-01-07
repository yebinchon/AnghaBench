
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pBackup; int (* xReiniter ) (int *) ;} ;
typedef int Pgno ;
typedef int PgHdr ;
typedef TYPE_1__ Pager ;


 int SQLITE_OK ;
 int assert (int ) ;
 int pagerUseWal (TYPE_1__*) ;
 int readDbPage (int *) ;
 int sqlite3BackupRestart (int ) ;
 int * sqlite3PagerLookup (TYPE_1__*,int ) ;
 int sqlite3PagerUnrefNotNull (int *) ;
 int sqlite3PcacheDrop (int *) ;
 int sqlite3PcachePageRefcount (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static int pagerUndoCallback(void *pCtx, Pgno iPg){
  int rc = SQLITE_OK;
  Pager *pPager = (Pager *)pCtx;
  PgHdr *pPg;

  assert( pagerUseWal(pPager) );
  pPg = sqlite3PagerLookup(pPager, iPg);
  if( pPg ){
    if( sqlite3PcachePageRefcount(pPg)==1 ){
      sqlite3PcacheDrop(pPg);
    }else{
      rc = readDbPage(pPg);
      if( rc==SQLITE_OK ){
        pPager->xReiniter(pPg);
      }
      sqlite3PagerUnrefNotNull(pPg);
    }
  }
  sqlite3BackupRestart(pPager->pBackup);

  return rc;
}
