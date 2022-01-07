
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int worker ;
struct TYPE_4__ {int bgw_restart_time; int bgw_name; scalar_t__ bgw_notify_pid; int bgw_function_name; int bgw_library_name; int bgw_start_time; int bgw_flags; } ;
typedef TYPE_1__ BackgroundWorker ;


 int BGWORKER_SHMEM_ACCESS ;
 int BGW_MAXLEN ;
 int BgWorkerStart_ConsistentState ;
 scalar_t__ IsUnderPostmaster ;
 int RegisterBackgroundWorker (TYPE_1__*) ;
 int RequestAddinShmemSpace (int ) ;
 int TaskTrackerShmemInit ;
 int TaskTrackerShmemSize () ;
 int memset (TYPE_1__*,int ,int) ;
 int prev_shmem_startup_hook ;
 int shmem_startup_hook ;
 int snprintf (int ,int ,char*) ;

void
TaskTrackerRegister(void)
{
 BackgroundWorker worker;

 prev_shmem_startup_hook = shmem_startup_hook;
 shmem_startup_hook = TaskTrackerShmemInit;

 if (IsUnderPostmaster)
 {
  return;
 }


 RequestAddinShmemSpace(TaskTrackerShmemSize());


 memset(&worker, 0, sizeof(worker));
 worker.bgw_flags = BGWORKER_SHMEM_ACCESS;
 worker.bgw_start_time = BgWorkerStart_ConsistentState;
 worker.bgw_restart_time = 1;
 snprintf(worker.bgw_library_name, BGW_MAXLEN, "citus");
 snprintf(worker.bgw_function_name, BGW_MAXLEN, "TaskTrackerMain");
 worker.bgw_notify_pid = 0;
 snprintf(worker.bgw_name, BGW_MAXLEN, "task tracker");

 RegisterBackgroundWorker(&worker);
}
