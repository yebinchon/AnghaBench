
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int info ;
struct TYPE_6__ {scalar_t__ taskHashTrancheId; char* taskHashTrancheName; int conninfosValid; int taskHashLock; } ;
typedef TYPE_1__ WorkerTasksSharedStateData ;
struct TYPE_7__ {int keysize; int hash; int entrysize; } ;
typedef TYPE_2__ HASHCTL ;


 int AddinShmemInitLock ;
 int Assert (int) ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 int LWLockAcquire (int ,int ) ;
 int LWLockInitialize (int *,scalar_t__) ;
 scalar_t__ LWLockNewTrancheId () ;
 int LWLockRegisterTranche (scalar_t__,char*) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MaxTrackedTasksPerNode ;
 int * ShmemInitHash (char*,long,long,TYPE_2__*,int) ;
 scalar_t__ ShmemInitStruct (char*,int,int*) ;
 int * TaskTrackerTaskHash ;
 int WORKER_TASK_SIZE ;
 TYPE_1__* WorkerTasksSharedState ;
 int memset (TYPE_2__*,int ,int) ;
 int prev_shmem_startup_hook () ;
 int tag_hash ;

__attribute__((used)) static void
TaskTrackerShmemInit(void)
{
 bool alreadyInitialized = 0;
 HASHCTL info;
 int hashFlags = 0;
 long maxTableSize = 0;
 long initTableSize = 0;

 maxTableSize = (long) MaxTrackedTasksPerNode;
 initTableSize = maxTableSize / 8;






 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(uint64) + sizeof(uint32);
 info.entrysize = WORKER_TASK_SIZE;
 info.hash = tag_hash;
 hashFlags = (HASH_ELEM | HASH_FUNCTION);






 LWLockAcquire(AddinShmemInitLock, LW_EXCLUSIVE);


 WorkerTasksSharedState =
  (WorkerTasksSharedStateData *) ShmemInitStruct("Worker Task Control",
                sizeof(WorkerTasksSharedStateData),
                &alreadyInitialized);

 if (!alreadyInitialized)
 {
  WorkerTasksSharedState->taskHashTrancheId = LWLockNewTrancheId();
  WorkerTasksSharedState->taskHashTrancheName = "Worker Task Hash Tranche";
  LWLockRegisterTranche(WorkerTasksSharedState->taskHashTrancheId,
         WorkerTasksSharedState->taskHashTrancheName);

  LWLockInitialize(&WorkerTasksSharedState->taskHashLock,
       WorkerTasksSharedState->taskHashTrancheId);

  WorkerTasksSharedState->conninfosValid = 1;
 }


 TaskTrackerTaskHash = ShmemInitHash("Worker Task Hash", initTableSize, maxTableSize,
          &info, hashFlags);

 LWLockRelease(AddinShmemInitLock);

 Assert(TaskTrackerTaskHash != ((void*)0));
 Assert(WorkerTasksSharedState->taskHashTrancheId != 0);

 if (prev_shmem_startup_hook != ((void*)0))
 {
  prev_shmem_startup_hook();
 }
}
