
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pDbFd; scalar_t__ exclusiveMode; } ;
typedef TYPE_1__ Wal ;


 int SQLITE_SHM_SHARED ;
 int SQLITE_SHM_UNLOCK ;
 int WALTRACE (char*) ;
 int sqlite3OsShmLock (int ,int,int,int) ;
 int walLockName (int) ;

__attribute__((used)) static void walUnlockShared(Wal *pWal, int lockIdx){
  if( pWal->exclusiveMode ) return;
  (void)sqlite3OsShmLock(pWal->pDbFd, lockIdx, 1,
                         SQLITE_SHM_UNLOCK | SQLITE_SHM_SHARED);
  WALTRACE(("WAL%p: release SHARED-%s\n", pWal, walLockName(lockIdx)));
}
