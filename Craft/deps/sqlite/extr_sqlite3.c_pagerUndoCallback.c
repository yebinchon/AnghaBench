
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {int pBackup; int (* xReiniter ) (TYPE_1__*) ;int pWal; } ;
struct TYPE_11__ {int pgno; } ;
typedef int Pgno ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 int SQLITE_OK ;
 int assert (int ) ;
 int pagerUseWal (TYPE_2__*) ;
 int readDbPage (TYPE_1__*,int ) ;
 int sqlite3BackupRestart (int ) ;
 TYPE_1__* sqlite3PagerLookup (TYPE_2__*,int ) ;
 int sqlite3PagerUnref (TYPE_1__*) ;
 int sqlite3PcacheDrop (TYPE_1__*) ;
 int sqlite3PcachePageRefcount (TYPE_1__*) ;
 int sqlite3WalFindFrame (int ,int ,int *) ;
 int stub1 (TYPE_1__*) ;

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
      u32 iFrame = 0;
      rc = sqlite3WalFindFrame(pPager->pWal, pPg->pgno, &iFrame);
      if( rc==SQLITE_OK ){
        rc = readDbPage(pPg, iFrame);
      }
      if( rc==SQLITE_OK ){
        pPager->xReiniter(pPg);
      }
      sqlite3PagerUnref(pPg);
    }
  }
  sqlite3BackupRestart(pPager->pBackup);

  return rc;
}
