
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_file ;
struct TYPE_5__ {struct TYPE_5__* pNext; } ;
struct TYPE_4__ {TYPE_2__* pFirst; } ;
typedef TYPE_1__ MemJournal ;
typedef TYPE_2__ FileChunk ;


 int SQLITE_OK ;
 int UNUSED_PARAMETER (scalar_t__) ;
 int assert (int) ;
 int sqlite3MemJournalOpen (int *) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static int memjrnlTruncate(sqlite3_file *pJfd, sqlite_int64 size){
  MemJournal *p = (MemJournal *)pJfd;
  FileChunk *pChunk;
  assert(size==0);
  UNUSED_PARAMETER(size);
  pChunk = p->pFirst;
  while( pChunk ){
    FileChunk *pTmp = pChunk;
    pChunk = pChunk->pNext;
    sqlite3_free(pTmp);
  }
  sqlite3MemJournalOpen(pJfd);
  return SQLITE_OK;
}
