
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int pid_t ;
typedef int os_reason_t ;
typedef int clock_usec_t ;
typedef scalar_t__ clock_sec_t ;
typedef int boolean_t ;
struct TYPE_6__ {char* p_name; int p_memstat_effectivepriority; } ;


 int FALSE ;
 int OS_LOG_DEFAULT ;
 int absolutetime_to_microtime (int ,scalar_t__*,int*) ;
 int mach_absolute_time () ;
 scalar_t__ memorystatus_available_pages ;
 int memorystatus_do_kill (TYPE_1__*,size_t,int ) ;
 int memorystatus_init_jetsam_snapshot_locked (int *,int ) ;
 scalar_t__ memorystatus_jetsam_snapshot_count ;
 int * memorystatus_kill_cause_name ;
 int memorystatus_update_jetsam_snapshot_entry_locked (TYPE_1__*,size_t,int ) ;
 int os_log_with_startup_serial (int ,char*,unsigned long,size_t,int ,char*,int ,int ,int ) ;
 int os_reason_free (int ) ;
 TYPE_1__* proc_find (int ) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_rele (TYPE_1__*) ;

__attribute__((used)) static boolean_t
memorystatus_kill_specific_process(pid_t victim_pid, uint32_t cause, os_reason_t jetsam_reason) {
 boolean_t killed;
 proc_t p;
 uint64_t killtime = 0;
        clock_sec_t tv_sec;
        clock_usec_t tv_usec;
        uint32_t tv_msec;



 p = proc_find(victim_pid);
 if (!p) {
  os_reason_free(jetsam_reason);
  return FALSE;
 }

 proc_list_lock();

 if (memorystatus_jetsam_snapshot_count == 0) {
  memorystatus_init_jetsam_snapshot_locked(((void*)0),0);
 }

 killtime = mach_absolute_time();
        absolutetime_to_microtime(killtime, &tv_sec, &tv_usec);
        tv_msec = tv_usec / 1000;

 memorystatus_update_jetsam_snapshot_entry_locked(p, cause, killtime);

 proc_list_unlock();

 os_log_with_startup_serial(OS_LOG_DEFAULT, "%lu.%03d memorystatus: killing_specific_process pid %d [%s] (%s %d) - memorystatus_available_pages: %llu\n",
        (unsigned long)tv_sec, tv_msec, victim_pid, (*p->p_name ? p->p_name : "unknown"),
        memorystatus_kill_cause_name[cause], p->p_memstat_effectivepriority, (uint64_t)memorystatus_available_pages);

 killed = memorystatus_do_kill(p, cause, jetsam_reason);
 proc_rele(p);

 return killed;
}
