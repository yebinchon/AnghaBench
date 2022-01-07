
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ eState; scalar_t__ errCode; scalar_t__ readOnly; scalar_t__ pInJournal; scalar_t__ dbOrigSize; scalar_t__ nSavepoint; scalar_t__ dbSize; int jfd; } ;
struct TYPE_12__ {scalar_t__ pgno; int flags; TYPE_2__* pPager; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 int CHECK_PAGE (TYPE_1__*) ;
 int PAGERID (TYPE_2__*) ;
 int PAGERTRACE (char*) ;
 scalar_t__ PAGER_WRITER_CACHEMOD ;
 scalar_t__ PAGER_WRITER_DBMOD ;
 scalar_t__ PAGER_WRITER_LOCKED ;
 int PGHDR_NEED_SYNC ;
 int PGHDR_WRITEABLE ;
 int SQLITE_OK ;
 int assert (int) ;
 int assert_pager_state (TYPE_2__*) ;
 int isOpen (int ) ;
 int pagerAddPageToRollbackJournal (TYPE_1__*) ;
 scalar_t__ pagerUseWal (TYPE_2__*) ;
 int pager_open_journal (TYPE_2__*) ;
 scalar_t__ sqlite3BitvecTestNotNull (scalar_t__,scalar_t__) ;
 int sqlite3PcacheMakeDirty (TYPE_1__*) ;
 int subjournalPageIfRequired (TYPE_1__*) ;

__attribute__((used)) static int pager_write(PgHdr *pPg){
  Pager *pPager = pPg->pPager;
  int rc = SQLITE_OK;





  assert( pPager->eState==PAGER_WRITER_LOCKED
       || pPager->eState==PAGER_WRITER_CACHEMOD
       || pPager->eState==PAGER_WRITER_DBMOD
  );
  assert( assert_pager_state(pPager) );
  assert( pPager->errCode==0 );
  assert( pPager->readOnly==0 );
  CHECK_PAGE(pPg);
  if( pPager->eState==PAGER_WRITER_LOCKED ){
    rc = pager_open_journal(pPager);
    if( rc!=SQLITE_OK ) return rc;
  }
  assert( pPager->eState>=PAGER_WRITER_CACHEMOD );
  assert( assert_pager_state(pPager) );


  sqlite3PcacheMakeDirty(pPg);





  assert( (pPager->pInJournal!=0) == isOpen(pPager->jfd) );
  if( pPager->pInJournal!=0
   && sqlite3BitvecTestNotNull(pPager->pInJournal, pPg->pgno)==0
  ){
    assert( pagerUseWal(pPager)==0 );
    if( pPg->pgno<=pPager->dbOrigSize ){
      rc = pagerAddPageToRollbackJournal(pPg);
      if( rc!=SQLITE_OK ){
        return rc;
      }
    }else{
      if( pPager->eState!=PAGER_WRITER_DBMOD ){
        pPg->flags |= PGHDR_NEED_SYNC;
      }
      PAGERTRACE(("APPEND %d page %d needSync=%d\n",
              PAGERID(pPager), pPg->pgno,
             ((pPg->flags&PGHDR_NEED_SYNC)?1:0)));
    }
  }






  pPg->flags |= PGHDR_WRITEABLE;




  if( pPager->nSavepoint>0 ){
    rc = subjournalPageIfRequired(pPg);
  }


  if( pPager->dbSize<pPg->pgno ){
    pPager->dbSize = pPg->pgno;
  }
  return rc;
}
