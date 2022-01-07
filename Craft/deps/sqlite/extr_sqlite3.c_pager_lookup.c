
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pPCache; } ;
typedef int Pgno ;
typedef int PgHdr ;
typedef TYPE_1__ Pager ;


 int sqlite3PcacheFetch (int ,int ,int ,int **) ;

__attribute__((used)) static PgHdr *pager_lookup(Pager *pPager, Pgno pgno){
  PgHdr *p;




  (void)sqlite3PcacheFetch(pPager->pPCache, pgno, 0, &p);
  return p;
}
