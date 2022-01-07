
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef TYPE_2__* os_reason_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {int osr_flags; } ;
struct TYPE_8__ {int p_pid; } ;


 scalar_t__ FALSE ;
 int JETSAM_REASON_MEMORY_PERPROCESSLIMIT ;
 int OS_LOG_DEFAULT ;
 int OS_REASON_FLAG_GENERATE_CRASH_REPORT ;
 int OS_REASON_JETSAM ;
 TYPE_2__* OS_REASON_NULL ;
 scalar_t__ TRUE ;
 scalar_t__ corpse_for_fatal_memkill ;
 TYPE_1__* current_proc () ;
 int kMemorystatusKilledPerProcessLimit ;
 scalar_t__ memorystatus_hwm_candidates ;
 scalar_t__ memorystatus_kill_process_sync (int ,int ,TYPE_2__*) ;
 scalar_t__ memorystatus_warn_process (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int os_log (int ,char*,int ) ;
 TYPE_2__* os_reason_create (int ,int ) ;
 int printf (char*) ;
 scalar_t__ proc_send_synchronous_EXC_RESOURCE (TYPE_1__*) ;

void
memorystatus_on_ledger_footprint_exceeded(boolean_t warning, boolean_t memlimit_is_active, boolean_t memlimit_is_fatal)
{
 os_reason_t jetsam_reason = OS_REASON_NULL;

 proc_t p = current_proc();
 if (memlimit_is_fatal) {




  jetsam_reason = os_reason_create(OS_REASON_JETSAM, JETSAM_REASON_MEMORY_PERPROCESSLIMIT);
  if (jetsam_reason == ((void*)0)) {
   printf("task_exceeded footprint: failed to allocate jetsam reason\n");
  } else if (corpse_for_fatal_memkill != 0 && proc_send_synchronous_EXC_RESOURCE(p) == FALSE) {

   jetsam_reason->osr_flags |= OS_REASON_FLAG_GENERATE_CRASH_REPORT;
  }

  if (memorystatus_kill_process_sync(p->p_pid, kMemorystatusKilledPerProcessLimit, jetsam_reason) != TRUE) {
   printf("task_exceeded_footprint: failed to kill the current task (exiting?).\n");
  }
 } else {




  memorystatus_hwm_candidates = TRUE;
 }
}
