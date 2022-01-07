
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int worker ;
typedef int int32 ;
typedef int args ;
struct TYPE_10__ {int DatabaseId; int bgw_flags; int bgw_extra; scalar_t__ bgw_notify_pid; int bgw_main_arg; int bgw_function_name; int bgw_library_name; int bgw_restart_time; int bgw_start_time; int bgw_type; int bgw_name; int lock_cooldown; } ;
struct TYPE_9__ {int * arg; int func; } ;
typedef TYPE_1__ MemoryContextCallback ;
typedef TYPE_2__ LockAcquireHelperArgs ;
typedef int BackgroundWorkerHandle ;
typedef TYPE_2__ BackgroundWorker ;


 int Assert (int) ;
 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_SHMEM_ACCESS ;
 int BGW_MAXLEN ;
 int BGW_NEVER_RESTART ;
 int BgWorkerStart_RecoveryFinished ;
 int CurrentMemoryContext ;
 int ERROR ;
 int EnsureStopLockAcquireHelper ;
 int Int32GetDatum (int) ;
 int MemoryContextRegisterResetCallback (int ,TYPE_1__*) ;
 int MyDatabaseId ;
 int RegisterDynamicBackgroundWorker (TYPE_2__*,int **) ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_1__* palloc0 (int) ;
 int snprintf (int ,int ,char*,...) ;

BackgroundWorkerHandle *
StartLockAcquireHelperBackgroundWorker(int backendToHelp, int32 lock_cooldown)
{
 BackgroundWorkerHandle *handle = ((void*)0);
 LockAcquireHelperArgs args;
 BackgroundWorker worker;
 MemoryContextCallback *workerCleanup = ((void*)0);
 memset(&args, 0, sizeof(args));
 memset(&worker, 0, sizeof(worker));


 args.DatabaseId = MyDatabaseId;
 args.lock_cooldown = lock_cooldown;


 snprintf(worker.bgw_name, BGW_MAXLEN,
    "Citus Lock Acquire Helper: %d/%u",
    backendToHelp, MyDatabaseId);
 snprintf(worker.bgw_type, BGW_MAXLEN, "citus_lock_aqcuire");

 worker.bgw_flags = BGWORKER_SHMEM_ACCESS | BGWORKER_BACKEND_DATABASE_CONNECTION;
 worker.bgw_start_time = BgWorkerStart_RecoveryFinished;
 worker.bgw_restart_time = BGW_NEVER_RESTART;

 snprintf(worker.bgw_library_name, BGW_MAXLEN, "citus");
 snprintf(worker.bgw_function_name, BGW_MAXLEN, "LockAcquireHelperMain");
 worker.bgw_main_arg = Int32GetDatum(backendToHelp);
 worker.bgw_notify_pid = 0;






 Assert(sizeof(worker.bgw_extra) >= sizeof(args));
 memcpy(worker.bgw_extra, &args, sizeof(args));

 if (!RegisterDynamicBackgroundWorker(&worker, &handle))
 {
  ereport(ERROR, (errmsg("could not start lock acquiring background worker to "
          "force the update"),
      errhint("Increasing max_worker_processes might help.")));
 }

 workerCleanup = palloc0(sizeof(MemoryContextCallback));
 workerCleanup->func = EnsureStopLockAcquireHelper;
 workerCleanup->arg = handle;

 MemoryContextRegisterResetCallback(CurrentMemoryContext, workerCleanup);

 return handle;
}
