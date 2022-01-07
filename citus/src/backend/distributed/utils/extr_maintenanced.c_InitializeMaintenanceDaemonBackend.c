
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int worker ;
struct TYPE_8__ {int lock; } ;
struct TYPE_7__ {int bgw_flags; int bgw_restart_time; int bgw_notify_pid; int bgw_extra; int bgw_main_arg; int bgw_function_name; int bgw_library_name; int bgw_start_time; int bgw_name; } ;
struct TYPE_6__ {int daemonStarted; int userOid; int triggerMetadataSync; scalar_t__ latch; scalar_t__ workerPid; } ;
typedef int Oid ;
typedef TYPE_1__ MaintenanceDaemonDBData ;
typedef int BackgroundWorkerHandle ;
typedef TYPE_2__ BackgroundWorker ;


 int Assert (int) ;
 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_SHMEM_ACCESS ;
 int BGW_MAXLEN ;
 int BgWorkerStart_ConsistentState ;
 int CitusExtensionOwner () ;
 int ERROR ;
 int HASH_ENTER_NULL ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 TYPE_5__* MaintenanceDaemonControl ;
 int MaintenanceDaemonDBHash ;
 int MyDatabaseId ;
 int MyProcPid ;
 int ObjectIdGetDatum (int) ;
 int RegisterDynamicBackgroundWorker (TYPE_2__*,int **) ;
 int SetLatch (scalar_t__) ;
 int WaitForBackgroundWorkerStartup (int *,int*) ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ hash_search (int ,int*,int ,int*) ;
 int memcpy (int ,int*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int snprintf (int ,int ,char*,int,int) ;
 int sprintf (int ,char*) ;

void
InitializeMaintenanceDaemonBackend(void)
{
 MaintenanceDaemonDBData *dbData = ((void*)0);
 Oid extensionOwner = CitusExtensionOwner();
 bool found;

 LWLockAcquire(&MaintenanceDaemonControl->lock, LW_EXCLUSIVE);

 dbData = (MaintenanceDaemonDBData *) hash_search(MaintenanceDaemonDBHash,
              &MyDatabaseId,
              HASH_ENTER_NULL, &found);

 if (dbData == ((void*)0))
 {

  ereport(ERROR, (errmsg("ran out of database slots")));
 }

 if (!found || !dbData->daemonStarted)
 {
  BackgroundWorker worker;
  BackgroundWorkerHandle *handle = ((void*)0);
  int pid = 0;

  dbData->userOid = extensionOwner;

  memset(&worker, 0, sizeof(worker));

  snprintf(worker.bgw_name, BGW_MAXLEN,
     "Citus Maintenance Daemon: %u/%u",
     MyDatabaseId, extensionOwner);


  worker.bgw_flags = BGWORKER_SHMEM_ACCESS | BGWORKER_BACKEND_DATABASE_CONNECTION;





  worker.bgw_start_time = BgWorkerStart_ConsistentState;




  worker.bgw_restart_time = 5;
  sprintf(worker.bgw_library_name, "citus");
  sprintf(worker.bgw_function_name, "CitusMaintenanceDaemonMain");
  worker.bgw_main_arg = ObjectIdGetDatum(MyDatabaseId);
  memcpy(worker.bgw_extra, &extensionOwner, sizeof(Oid));
  worker.bgw_notify_pid = MyProcPid;

  if (!RegisterDynamicBackgroundWorker(&worker, &handle))
  {
   ereport(ERROR, (errmsg("could not start maintenance background worker"),
       errhint("Increasing max_worker_processes might help.")));
  }

  dbData->daemonStarted = 1;
  dbData->workerPid = 0;
  dbData->triggerMetadataSync = 0;
  LWLockRelease(&MaintenanceDaemonControl->lock);

  WaitForBackgroundWorkerStartup(handle, &pid);
 }
 else
 {
  Assert(dbData->daemonStarted);





  if (dbData->userOid != extensionOwner)
  {
   dbData->userOid = extensionOwner;
   if (dbData->latch)
   {
    SetLatch(dbData->latch);
   }
  }
  LWLockRelease(&MaintenanceDaemonControl->lock);
 }
}
