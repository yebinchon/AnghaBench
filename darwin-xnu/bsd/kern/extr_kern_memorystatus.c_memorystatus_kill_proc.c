
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
typedef size_t uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int pid_t ;
typedef int os_reason_t ;
typedef int clock_usec_t ;
typedef scalar_t__ clock_sec_t ;
typedef int boolean_t ;
struct TYPE_6__ {int p_pid; size_t p_memstat_effectivepriority; char* p_name; int p_memstat_state; int task; scalar_t__ p_memstat_memlimit; } ;


 scalar_t__ FALSE ;
 size_t JETSAM_PRIORITY_IDLE ;
 int MEMORYSTATUS_DEBUG (int,char*,...) ;
 int OS_LOG_DEFAULT ;
 int P_MEMSTAT_DIAG_SUSPENDED ;
 int P_MEMSTAT_FOREGROUND ;
 int TRUE ;
 int absolutetime_to_microtime (unsigned long long,scalar_t__*,int*) ;
 unsigned long long footprint_in_bytes ;
 unsigned long long get_task_phys_footprint (int ) ;
 int jetsam_diagnostic_suspended_one_active_proc ;
 size_t kMemorystatusInvalid ;
 size_t kMemorystatusKilledHiwat ;
 size_t kMemorystatusKilledVnodes ;
 size_t kMemorystatusKilledZoneMapExhaustion ;
 int kPolicyDiagnoseActive ;
 int kPolicyDiagnoseFirst ;
 unsigned long long mach_absolute_time () ;
 scalar_t__ memorystatus_avail_pages_below_pressure () ;
 scalar_t__ memorystatus_available_pages ;
 int memorystatus_do_kill (TYPE_1__*,size_t,int ) ;
 int memorystatus_jetsam_policy ;
 int * memorystatus_kill_cause_name ;
 int memorystatus_purge_before_jetsam_success ;
 int memorystatus_update_jetsam_snapshot_entry_locked (TYPE_1__*,size_t,unsigned long long) ;
 int networking_memstatus_callout (TYPE_1__*,size_t) ;
 int os_log_with_startup_serial (int ,char*,unsigned long,size_t,char*,int,...) ;
 int os_reason_ref (int ) ;
 int printf (char*,int) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int strlcpy (char*,char*,int) ;
 int task_suspend (int ) ;
 unsigned long long vm_purgeable_purge_task_owned (int ) ;

__attribute__((used)) static boolean_t
memorystatus_kill_proc(proc_t p, uint32_t cause, os_reason_t jetsam_reason, boolean_t *killed)
{
 pid_t aPid = 0;
 uint32_t aPid_ep = 0;

 uint64_t killtime = 0;
        clock_sec_t tv_sec;
        clock_usec_t tv_usec;
        uint32_t tv_msec;
 boolean_t retval = FALSE;
 uint64_t num_pages_purged = 0;

 aPid = p->p_pid;
 aPid_ep = p->p_memstat_effectivepriority;

 if (cause != kMemorystatusKilledVnodes && cause != kMemorystatusKilledZoneMapExhaustion) {



  boolean_t success = FALSE;

  networking_memstatus_callout(p, cause);
  num_pages_purged = vm_purgeable_purge_task_owned(p->task);

  if (num_pages_purged) {




   if (cause == kMemorystatusKilledHiwat) {
    uint64_t footprint_in_bytes = get_task_phys_footprint(p->task);
    uint64_t memlimit_in_bytes = (((uint64_t)p->p_memstat_memlimit) * 1024ULL * 1024ULL);
    success = (footprint_in_bytes <= memlimit_in_bytes);
   } else {
    success = (memorystatus_avail_pages_below_pressure() == FALSE);
   }

   if (success) {

    memorystatus_purge_before_jetsam_success++;

    os_log_with_startup_serial(OS_LOG_DEFAULT, "memorystatus: purged %llu pages from pid %d [%s] and avoided %s\n",
    num_pages_purged, aPid, (*p->p_name ? p->p_name : "unknown"), memorystatus_kill_cause_name[cause]);

    *killed = FALSE;

    return TRUE;
   }
  }
 }
 killtime = mach_absolute_time();
 absolutetime_to_microtime(killtime, &tv_sec, &tv_usec);
 tv_msec = tv_usec / 1000;
 {
  proc_list_lock();
  memorystatus_update_jetsam_snapshot_entry_locked(p, cause, killtime);
  proc_list_unlock();

  char kill_reason_string[128];

  if (cause == kMemorystatusKilledHiwat) {
   strlcpy(kill_reason_string, "killing_highwater_process", 128);
  } else {
   if (aPid_ep == JETSAM_PRIORITY_IDLE) {
    strlcpy(kill_reason_string, "killing_idle_process", 128);
   } else {
    strlcpy(kill_reason_string, "killing_top_process", 128);
   }
  }

  os_log_with_startup_serial(OS_LOG_DEFAULT, "%lu.%03d memorystatus: %s pid %d [%s] (%s %d) - memorystatus_available_pages: %llu\n",
         (unsigned long)tv_sec, tv_msec, kill_reason_string,
         aPid, (*p->p_name ? p->p_name : "unknown"),
         memorystatus_kill_cause_name[cause], aPid_ep, (uint64_t)memorystatus_available_pages);






  os_reason_ref(jetsam_reason);

  retval = memorystatus_do_kill(p, cause, jetsam_reason);

  *killed = retval;
 }

 return retval;
}
