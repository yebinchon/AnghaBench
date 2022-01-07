
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgno; int hdrOffset; int * pBt; int * pDbPage; int aData; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef int DbPage ;
typedef int BtShared ;


 int sqlite3PagerGetData (int *) ;
 scalar_t__ sqlite3PagerGetExtra (int *) ;

__attribute__((used)) static MemPage *btreePageFromDbPage(DbPage *pDbPage, Pgno pgno, BtShared *pBt){
  MemPage *pPage = (MemPage*)sqlite3PagerGetExtra(pDbPage);
  pPage->aData = sqlite3PagerGetData(pDbPage);
  pPage->pDbPage = pDbPage;
  pPage->pBt = pBt;
  pPage->pgno = pgno;
  pPage->hdrOffset = pPage->pgno==1 ? 100 : 0;
  return pPage;
}
