
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int pid_t ;
typedef scalar_t__ os_reason_t ;
typedef scalar_t__ int32_t ;
typedef int clock_usec_t ;
typedef scalar_t__ clock_sec_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_14__ {scalar_t__ entry_count; } ;
struct TYPE_13__ {int p_listflag; scalar_t__ p_memstat_effectivepriority; char* p_name; int p_pid; int p_memstat_state; } ;


 unsigned int AGGRESSIVE_JETSAM_LENIENT_MODE_THRESHOLD ;
 int BSDDBG_CODE (int ,int ) ;
 int BSD_MEMSTAT_JETSAM ;
 int DBG_BSD_MEMSTAT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 scalar_t__ FALSE ;
 scalar_t__ JETSAM_PRIORITY_FOREGROUND ;
 scalar_t__ JETSAM_PRIORITY_IDLE ;
 int JETSAM_SORT_DEFAULT ;
 int KERNEL_DEBUG_CONSTANT (int,scalar_t__,int,int,int ,int ) ;
 int MEMORYSTATUS_DEBUG (int,char*,int,int,char*,...) ;
 int OS_REASON_JETSAM ;
 scalar_t__ OS_REASON_NULL ;
 TYPE_1__* PROC_NULL ;
 int P_LIST_EXITED ;
 int P_MEMSTAT_DIAG_SUSPENDED ;
 int P_MEMSTAT_ERROR ;
 int P_MEMSTAT_FOREGROUND ;
 int P_MEMSTAT_TERMINATED ;
 scalar_t__ TRUE ;
 int absolutetime_to_microtime (int ,scalar_t__*,int*) ;
 int kPolicyDiagnoseActive ;
 int mach_absolute_time () ;
 scalar_t__ memorystatus_aggressive_jetsam_lenient ;
 scalar_t__ memorystatus_available_pages ;
 scalar_t__ memorystatus_do_kill (TYPE_1__*,size_t,scalar_t__) ;
 TYPE_1__* memorystatus_get_first_proc_locked (unsigned int*,scalar_t__) ;
 TYPE_1__* memorystatus_get_next_proc_locked (unsigned int*,TYPE_1__*,scalar_t__) ;
 int memorystatus_init_jetsam_snapshot_locked (int *,int ) ;
 int memorystatus_jetsam_policy ;
 TYPE_7__* memorystatus_jetsam_snapshot ;
 scalar_t__ memorystatus_jetsam_snapshot_count ;
 int * memorystatus_kill_cause_name ;
 unsigned int memorystatus_level ;
 int memorystatus_sort_bucket (scalar_t__,int ) ;
 int memorystatus_update_jetsam_snapshot_entry_locked (TYPE_1__*,size_t,int ) ;
 scalar_t__ os_reason_create (int ,size_t) ;
 int os_reason_free (scalar_t__) ;
 int os_reason_ref (scalar_t__) ;
 int printf (char*,...) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 TYPE_1__* proc_ref_locked (TYPE_1__*) ;
 int proc_rele (TYPE_1__*) ;
 int proc_rele_locked (TYPE_1__*) ;

__attribute__((used)) static boolean_t
memorystatus_kill_top_process_aggressive(uint32_t cause, int aggr_count,
      int32_t priority_max, uint32_t *errors)
{
 pid_t aPid;
 proc_t p = PROC_NULL, next_p = PROC_NULL;
 boolean_t new_snapshot = FALSE, killed = FALSE;
 int kill_count = 0;
 unsigned int i = 0;
 int32_t aPid_ep = 0;
 unsigned int memorystatus_level_snapshot = 0;
 uint64_t killtime = 0;
        clock_sec_t tv_sec;
        clock_usec_t tv_usec;
        uint32_t tv_msec;
 os_reason_t jetsam_reason = OS_REASON_NULL;

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_JETSAM) | DBG_FUNC_START,
  memorystatus_available_pages, priority_max, 0, 0, 0);

 memorystatus_sort_bucket(JETSAM_PRIORITY_FOREGROUND, JETSAM_SORT_DEFAULT);

 jetsam_reason = os_reason_create(OS_REASON_JETSAM, cause);
 if (jetsam_reason == OS_REASON_NULL) {
  printf("memorystatus_kill_top_process_aggressive: failed to allocate exit reason\n");
 }

 proc_list_lock();

 next_p = memorystatus_get_first_proc_locked(&i, TRUE);
 while (next_p) {





  if (((next_p->p_listflag & P_LIST_EXITED) != 0) ||
      ((unsigned int)(next_p->p_memstat_effectivepriority) != i)) {
   MEMORYSTATUS_DEBUG(1, "memorystatus: aggressive%d: rewinding band %d, %s(%d) moved or exiting.\n",
        aggr_count, i, (*next_p->p_name ? next_p->p_name : "unknown"), next_p->p_pid);

   next_p = memorystatus_get_first_proc_locked(&i, TRUE);
   continue;
  }

  p = next_p;
  next_p = memorystatus_get_next_proc_locked(&i, p, TRUE);

  if (p->p_memstat_effectivepriority > priority_max) {






   proc_list_unlock();
   goto exit;
  }






  aPid = p->p_pid;
  aPid_ep = p->p_memstat_effectivepriority;

  if (p->p_memstat_state & (P_MEMSTAT_ERROR | P_MEMSTAT_TERMINATED)) {
   continue;
  }
  if (memorystatus_jetsam_snapshot_count == 0) {
   memorystatus_init_jetsam_snapshot_locked(((void*)0),0);
   new_snapshot = TRUE;
  }







  p->p_memstat_state |= P_MEMSTAT_TERMINATED;

  killtime = mach_absolute_time();
  absolutetime_to_microtime(killtime, &tv_sec, &tv_usec);
  tv_msec = tv_usec / 1000;


  memorystatus_update_jetsam_snapshot_entry_locked(p, cause, killtime);
  if (proc_ref_locked(p) == p) {
   if (next_p) {
    while (next_p && (proc_ref_locked(next_p) != next_p)) {
     proc_t temp_p;






     MEMORYSTATUS_DEBUG(1, "memorystatus: aggressive%d: skipping %d [%s] (exiting?)\n",
            aggr_count, next_p->p_pid, (*next_p->p_name ? next_p->p_name : "(unknown)"));

     temp_p = next_p;
     next_p = memorystatus_get_next_proc_locked(&i, temp_p, TRUE);
     }
   }
   proc_list_unlock();

   printf("%lu.%03d memorystatus: %s%d pid %d [%s] (%s %d) - memorystatus_available_pages: %llu\n",
          (unsigned long)tv_sec, tv_msec,
          ((aPid_ep == JETSAM_PRIORITY_IDLE) ? "killing_idle_process_aggressive" : "killing_top_process_aggressive"),
          aggr_count, aPid, (*p->p_name ? p->p_name : "unknown"),
          memorystatus_kill_cause_name[cause], aPid_ep, (uint64_t)memorystatus_available_pages);

   memorystatus_level_snapshot = memorystatus_level;






   os_reason_ref(jetsam_reason);
   killed = memorystatus_do_kill(p, cause, jetsam_reason);


   if (killed) {
    proc_rele(p);
    kill_count++;
    p = ((void*)0);
    killed = FALSE;




    proc_list_lock();
    if (next_p) {
     proc_rele_locked(next_p);
    }

    if (aPid_ep == JETSAM_PRIORITY_FOREGROUND && memorystatus_aggressive_jetsam_lenient == TRUE) {
     if (memorystatus_level > memorystatus_level_snapshot && ((memorystatus_level - memorystatus_level_snapshot) >= AGGRESSIVE_JETSAM_LENIENT_MODE_THRESHOLD)) {



      memorystatus_aggressive_jetsam_lenient = FALSE;
      break;
     }
    }

    continue;
   }





   proc_list_lock();
   proc_rele_locked(p);
   if (next_p) {
    proc_rele_locked(next_p);
   }
   p->p_memstat_state &= ~P_MEMSTAT_TERMINATED;
   p->p_memstat_state |= P_MEMSTAT_ERROR;
   *errors += 1;
   p = ((void*)0);
  }
  next_p = memorystatus_get_first_proc_locked(&i, TRUE);
 }

 proc_list_unlock();

exit:
 os_reason_free(jetsam_reason);


 if (new_snapshot && (kill_count == 0)) {
     proc_list_lock();
     memorystatus_jetsam_snapshot->entry_count = memorystatus_jetsam_snapshot_count = 0;
     proc_list_unlock();
 }

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_JETSAM) | DBG_FUNC_END,
         memorystatus_available_pages, killed ? aPid : 0, kill_count, 0, 0);

 if (kill_count > 0) {
  return(TRUE);
 }
 else {
  return(FALSE);
 }
}
