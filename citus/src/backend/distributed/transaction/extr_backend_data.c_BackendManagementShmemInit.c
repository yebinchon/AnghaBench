
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int initiatorNodeIdentifier; } ;
struct TYPE_10__ {int mutex; TYPE_1__ citusBackend; } ;
struct TYPE_8__ {int trancheId; } ;
struct TYPE_9__ {TYPE_4__* backends; int nextTransactionNumber; int lock; TYPE_2__ namedLockTranche; } ;
typedef TYPE_2__ NamedLWLockTranche ;
typedef TYPE_3__ BackendManagementShmemData ;
typedef TYPE_4__ BackendData ;


 int AddinShmemInitLock ;
 int BackendManagementShmemSize () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockInitialize (int *,int ) ;
 int LWLockNewTrancheId () ;
 int LWLockRegisterTranche (int ,char*) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int SpinLockInit (int *) ;
 int TotalProcCount () ;
 TYPE_3__* backendManagementShmemData ;
 int memset (TYPE_3__*,int ,int ) ;
 int pg_atomic_init_u64 (int *,int) ;
 int prev_shmem_startup_hook () ;

__attribute__((used)) static void
BackendManagementShmemInit(void)
{
 bool alreadyInitialized = 0;


 LWLockAcquire(AddinShmemInitLock, LW_EXCLUSIVE);

 backendManagementShmemData =
  (BackendManagementShmemData *) ShmemInitStruct(
   "Backend Management Shmem",
   BackendManagementShmemSize(),
   &alreadyInitialized);

 if (!alreadyInitialized)
 {
  int backendIndex = 0;
  int totalProcs = 0;
  char *trancheName = "Backend Management Tranche";

  NamedLWLockTranche *namedLockTranche =
   &backendManagementShmemData->namedLockTranche;


  memset(backendManagementShmemData, 0,
      BackendManagementShmemSize());

  namedLockTranche->trancheId = LWLockNewTrancheId();

  LWLockRegisterTranche(namedLockTranche->trancheId, trancheName);
  LWLockInitialize(&backendManagementShmemData->lock,
       namedLockTranche->trancheId);


  pg_atomic_init_u64(&backendManagementShmemData->nextTransactionNumber, 1);
  totalProcs = TotalProcCount();
  for (backendIndex = 0; backendIndex < totalProcs; ++backendIndex)
  {
   BackendData *backendData =
    &backendManagementShmemData->backends[backendIndex];
   backendData->citusBackend.initiatorNodeIdentifier = -1;
   SpinLockInit(&backendData->mutex);
  }
 }

 LWLockRelease(AddinShmemInitLock);

 if (prev_shmem_startup_hook != ((void*)0))
 {
  prev_shmem_startup_hook();
 }
}
