
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hashInfo ;
struct TYPE_7__ {int keysize; int entrysize; int hash; } ;
struct TYPE_6__ {char* lockTrancheName; int trancheId; int lock; } ;
typedef int Oid ;
typedef int MaintenanceDaemonDBData ;
typedef TYPE_1__ MaintenanceDaemonControlData ;
typedef TYPE_2__ HASHCTL ;


 int AddinShmemInitLock ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 int LWLockAcquire (int ,int ) ;
 int LWLockInitialize (int *,int ) ;
 int LWLockNewTrancheId () ;
 int LWLockRegisterTranche (int ,char*) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* MaintenanceDaemonControl ;
 int MaintenanceDaemonDBHash ;
 int MaintenanceDaemonShmemSize () ;
 int ShmemInitHash (char*,int ,int ,TYPE_2__*,int) ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int max_worker_processes ;
 int memset (TYPE_2__*,int ,int) ;
 int prev_shmem_startup_hook () ;
 int tag_hash ;

__attribute__((used)) static void
MaintenanceDaemonShmemInit(void)
{
 bool alreadyInitialized = 0;
 HASHCTL hashInfo;
 int hashFlags = 0;

 LWLockAcquire(AddinShmemInitLock, LW_EXCLUSIVE);

 MaintenanceDaemonControl =
  (MaintenanceDaemonControlData *) ShmemInitStruct("Citus Maintenance Daemon",
               MaintenanceDaemonShmemSize(),
               &alreadyInitialized);





 if (!alreadyInitialized)
 {
  MaintenanceDaemonControl->trancheId = LWLockNewTrancheId();
  MaintenanceDaemonControl->lockTrancheName = "Citus Maintenance Daemon";
  LWLockRegisterTranche(MaintenanceDaemonControl->trancheId,
         MaintenanceDaemonControl->lockTrancheName);

  LWLockInitialize(&MaintenanceDaemonControl->lock,
       MaintenanceDaemonControl->trancheId);
 }


 memset(&hashInfo, 0, sizeof(hashInfo));
 hashInfo.keysize = sizeof(Oid);
 hashInfo.entrysize = sizeof(MaintenanceDaemonDBData);
 hashInfo.hash = tag_hash;
 hashFlags = (HASH_ELEM | HASH_FUNCTION);

 MaintenanceDaemonDBHash = ShmemInitHash("Maintenance Database Hash",
           max_worker_processes, max_worker_processes,
           &hashInfo, hashFlags);

 LWLockRelease(AddinShmemInitLock);

 if (prev_shmem_startup_hook != ((void*)0))
 {
  prev_shmem_startup_hook();
 }
}
