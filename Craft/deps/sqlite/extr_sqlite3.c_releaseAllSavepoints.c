
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pInSavepoint; } ;
struct TYPE_4__ {int nSavepoint; scalar_t__ nSubRec; TYPE_2__* aSavepoint; int sjfd; int exclusiveMode; } ;
typedef TYPE_1__ Pager ;


 int sqlite3BitvecDestroy (int ) ;
 scalar_t__ sqlite3IsMemJournal (int ) ;
 int sqlite3OsClose (int ) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void releaseAllSavepoints(Pager *pPager){
  int ii;
  for(ii=0; ii<pPager->nSavepoint; ii++){
    sqlite3BitvecDestroy(pPager->aSavepoint[ii].pInSavepoint);
  }
  if( !pPager->exclusiveMode || sqlite3IsMemJournal(pPager->sjfd) ){
    sqlite3OsClose(pPager->sjfd);
  }
  sqlite3_free(pPager->aSavepoint);
  pPager->aSavepoint = 0;
  pPager->nSavepoint = 0;
  pPager->nSubRec = 0;
}
