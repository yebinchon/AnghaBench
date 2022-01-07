
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int pid_t ;
typedef int os_reason_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_14__ {scalar_t__ entry_count; } ;
struct TYPE_13__ {scalar_t__ p_memstat_effectivepriority; int p_memstat_state; int p_pid; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_MEMSTAT_JETSAM ;
 int DBG_BSD_MEMSTAT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 scalar_t__ FALSE ;
 scalar_t__ JETSAM_PRIORITY_FOREGROUND ;
 scalar_t__ JETSAM_PRIORITY_IDLE ;
 scalar_t__ JETSAM_PRIORITY_MAX ;
 int JETSAM_SORT_DEFAULT ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int,int ,int ,int ) ;
 TYPE_1__* PROC_NULL ;
 int P_MEMSTAT_DIAG_SUSPENDED ;
 int P_MEMSTAT_ERROR ;
 int P_MEMSTAT_LOCKED ;
 int P_MEMSTAT_TERMINATED ;
 scalar_t__ TRUE ;
 TYPE_1__* current_proc () ;
 scalar_t__ kMemorystatusKilledVnodes ;
 scalar_t__ kMemorystatusKilledZoneMapExhaustion ;
 int kPolicyDiagnoseActive ;
 scalar_t__ max_kill_priority ;
 int memorystatus_available_pages ;
 TYPE_1__* memorystatus_get_first_proc_locked (unsigned int*,scalar_t__) ;
 TYPE_1__* memorystatus_get_next_proc_locked (unsigned int*,TYPE_1__*,scalar_t__) ;
 scalar_t__ memorystatus_idle_snapshot ;
 int memorystatus_init_jetsam_snapshot_locked (int *,int ) ;
 int memorystatus_jetsam_policy ;
 TYPE_7__* memorystatus_jetsam_snapshot ;
 scalar_t__ memorystatus_jetsam_snapshot_count ;
 scalar_t__ memorystatus_kill_proc (TYPE_1__*,scalar_t__,int ,scalar_t__*) ;
 int memorystatus_sort_bucket (scalar_t__,int ) ;
 int os_reason_free (int ) ;
 int printf (char*,int) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 TYPE_1__* proc_ref_locked (TYPE_1__*) ;
 int proc_rele (TYPE_1__*) ;
 int proc_rele_locked (TYPE_1__*) ;

__attribute__((used)) static boolean_t
memorystatus_kill_top_process(boolean_t any, boolean_t sort_flag, uint32_t cause, os_reason_t jetsam_reason,
         int32_t *priority, uint32_t *errors)
{
 pid_t aPid;
 proc_t p = PROC_NULL, next_p = PROC_NULL;
 boolean_t new_snapshot = FALSE, force_new_snapshot = FALSE, killed = FALSE, freed_mem = FALSE;
 unsigned int i = 0;
 uint32_t aPid_ep;
 int32_t local_max_kill_prio = JETSAM_PRIORITY_IDLE;


#pragma unused(any)


 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_JETSAM) | DBG_FUNC_START,
  memorystatus_available_pages, 0, 0, 0, 0);
 if (sort_flag == TRUE) {
  (void)memorystatus_sort_bucket(JETSAM_PRIORITY_IDLE, JETSAM_SORT_DEFAULT);
 }
 if (cause == kMemorystatusKilledZoneMapExhaustion) {
  local_max_kill_prio = JETSAM_PRIORITY_MAX;
 } else {
  local_max_kill_prio = max_kill_priority;
 }





 force_new_snapshot = TRUE;



 proc_list_lock();

 next_p = memorystatus_get_first_proc_locked(&i, TRUE);
 while (next_p && (next_p->p_memstat_effectivepriority <= local_max_kill_prio)) {




  p = next_p;
  next_p = memorystatus_get_next_proc_locked(&i, p, TRUE);





  aPid = p->p_pid;
  aPid_ep = p->p_memstat_effectivepriority;

  if (p->p_memstat_state & (P_MEMSTAT_ERROR | P_MEMSTAT_TERMINATED)) {
   continue;
  }
  if (cause == kMemorystatusKilledVnodes)
  {
   if (p == current_proc()) {

    continue;
   }
  }
  {
   if (proc_ref_locked(p) == p) {






    p->p_memstat_state |= P_MEMSTAT_TERMINATED;

   } else {






    i = 0;
    next_p = memorystatus_get_first_proc_locked(&i, TRUE);
    continue;
   }
                 if ((memorystatus_jetsam_snapshot_count == 0) &&
       (force_new_snapshot || memorystatus_idle_snapshot || ((!priority) || (priority && (aPid_ep != JETSAM_PRIORITY_IDLE))))) {
    memorystatus_init_jetsam_snapshot_locked(((void*)0),0);
                  new_snapshot = TRUE;
                 }

   proc_list_unlock();

   freed_mem = memorystatus_kill_proc(p, cause, jetsam_reason, &killed);

   if (freed_mem) {
    if (killed) {
     if (priority) {
      *priority = aPid_ep;
     }
    } else {

     proc_list_lock();
     p->p_memstat_state &= ~P_MEMSTAT_TERMINATED;
     proc_list_unlock();
    }
    proc_rele(p);
    goto exit;
   }





   proc_list_lock();
   proc_rele_locked(p);
   p->p_memstat_state &= ~P_MEMSTAT_TERMINATED;
   p->p_memstat_state |= P_MEMSTAT_ERROR;
   *errors += 1;

   i = 0;
   next_p = memorystatus_get_first_proc_locked(&i, TRUE);
  }
 }

 proc_list_unlock();

exit:
 os_reason_free(jetsam_reason);


 if (new_snapshot && !killed) {
  proc_list_lock();
  memorystatus_jetsam_snapshot->entry_count = memorystatus_jetsam_snapshot_count = 0;
  proc_list_unlock();
 }

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_JETSAM) | DBG_FUNC_END,
         memorystatus_available_pages, killed ? aPid : 0, 0, 0, 0);

 return killed;
}
