
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tempFile; int pPCache; int fd; } ;
typedef TYPE_1__ Pager ;


 int isOpen (int ) ;
 int sqlite3PCachePercentDirty (int ) ;

__attribute__((used)) static int pagerFlushOnCommit(Pager *pPager, int bCommit){
  if( pPager->tempFile==0 ) return 1;
  if( !bCommit ) return 0;
  if( !isOpen(pPager->fd) ) return 0;
  return (sqlite3PCachePercentDirty(pPager->pPCache)>=25);
}
