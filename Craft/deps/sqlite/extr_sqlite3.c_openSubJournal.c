
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ journalMode; int sjfd; scalar_t__ subjInMemory; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_JOURNALMODE_MEMORY ;
 int SQLITE_OK ;
 int SQLITE_OPEN_SUBJOURNAL ;
 int isOpen (int ) ;
 int pagerOpentemp (TYPE_1__*,int ,int ) ;
 int sqlite3MemJournalOpen (int ) ;

__attribute__((used)) static int openSubJournal(Pager *pPager){
  int rc = SQLITE_OK;
  if( !isOpen(pPager->sjfd) ){
    if( pPager->journalMode==PAGER_JOURNALMODE_MEMORY || pPager->subjInMemory ){
      sqlite3MemJournalOpen(pPager->sjfd);
    }else{
      rc = pagerOpentemp(pPager, pPager->sjfd, SQLITE_OPEN_SUBJOURNAL);
    }
  }
  return rc;
}
