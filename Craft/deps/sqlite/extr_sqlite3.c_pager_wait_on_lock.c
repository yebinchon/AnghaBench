
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eLock; int pBusyHandlerArg; scalar_t__ (* xBusyHandler ) (int ) ;} ;
typedef TYPE_1__ Pager ;


 int EXCLUSIVE_LOCK ;
 int NO_LOCK ;
 int RESERVED_LOCK ;
 int SHARED_LOCK ;
 int SQLITE_BUSY ;
 int assert (int) ;
 int pagerLockDb (TYPE_1__*,int) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int pager_wait_on_lock(Pager *pPager, int locktype){
  int rc;






  assert( (pPager->eLock>=locktype)
       || (pPager->eLock==NO_LOCK && locktype==SHARED_LOCK)
       || (pPager->eLock==RESERVED_LOCK && locktype==EXCLUSIVE_LOCK)
  );

  do {
    rc = pagerLockDb(pPager, locktype);
  }while( rc==SQLITE_BUSY && pPager->xBusyHandler(pPager->pBusyHandlerArg) );
  return rc;
}
