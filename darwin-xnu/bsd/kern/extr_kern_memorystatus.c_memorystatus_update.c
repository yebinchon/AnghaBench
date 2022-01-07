
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* proc_t ;
typedef int int32_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {char* p_name; int p_pid; int p_memstat_state; int p_listflag; int p_memstat_requestedpriority; int p_memstat_dirty; scalar_t__ p_memstat_memlimit; int task; int p_memstat_userdata; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_MEMSTAT_UPDATE ;
 int CACHE_ACTIVE_LIMITS_LOCKED (TYPE_1__*,scalar_t__) ;
 int CACHE_INACTIVE_LIMITS_LOCKED (TYPE_1__*,scalar_t__) ;
 int DBG_BSD_MEMSTAT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EALREADY ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ FALSE ;
 int JETSAM_PRIORITY_DEFAULT ;
 int JETSAM_PRIORITY_IDLE ;
 int JETSAM_PRIORITY_IDLE_HEAD ;
 int KERNEL_DEBUG_CONSTANT (int,int,int,int ,scalar_t__,int ) ;
 int MEMORYSTATUS_DEBUG (int,char*,...) ;
 int MEMSTAT_BUCKET_COUNT ;
 int P_DIRTY ;
 int P_LIST_EXITED ;
 int P_MEMSTAT_FATAL_MEMLIMIT ;
 int P_MEMSTAT_INTERNAL ;
 int P_MEMSTAT_PRIORITYUPDATED ;
 int P_MEMSTAT_TERMINATED ;
 int SET_ACTIVE_LIMITS_LOCKED (TYPE_1__*,int,scalar_t__) ;
 int SET_INACTIVE_LIMITS_LOCKED (TYPE_1__*,int,scalar_t__) ;
 scalar_t__ TRUE ;
 int applications_aging_band ;
 int assert (int) ;
 scalar_t__ isProcessInAgingBands (TYPE_1__*) ;
 scalar_t__ jetsam_aging_policy ;
 scalar_t__ kJetsamAgingPolicyLegacy ;
 scalar_t__ memorystatus_highwater_enabled ;
 int memorystatus_invalidate_idle_demotion_locked (TYPE_1__*,scalar_t__) ;
 int memorystatus_update_priority_locked (TYPE_1__*,int,scalar_t__,scalar_t__) ;
 scalar_t__ proc_jetsam_state_is_active_locked (TYPE_1__*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int system_procs_aging_band ;
 int task_set_phys_footprint_limit_internal (int ,int,int *,scalar_t__,scalar_t__) ;

int
memorystatus_update(proc_t p, int priority, uint64_t user_data, boolean_t effective, boolean_t update_memlimit,
      int32_t memlimit_active, boolean_t memlimit_active_is_fatal,
                    int32_t memlimit_inactive, boolean_t memlimit_inactive_is_fatal)
{
 int ret;
 boolean_t head_insert = 0;

 MEMORYSTATUS_DEBUG(1, "memorystatus_update: changing (%s) pid %d: priority %d, user_data 0x%llx\n", (*p->p_name ? p->p_name : "unknown"), p->p_pid, priority, user_data);

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_UPDATE) | DBG_FUNC_START, p->p_pid, priority, user_data, effective, 0);

 if (priority == -1) {

  priority = JETSAM_PRIORITY_DEFAULT;
 } else if ((priority == system_procs_aging_band) || (priority == applications_aging_band)) {

  priority = JETSAM_PRIORITY_IDLE;
 } else if (priority == JETSAM_PRIORITY_IDLE_HEAD) {

  priority = JETSAM_PRIORITY_IDLE;
  head_insert = TRUE;
 } else if ((priority < 0) || (priority >= MEMSTAT_BUCKET_COUNT)) {

  ret = EINVAL;
  goto out;
 }

 proc_list_lock();

 assert(!(p->p_memstat_state & P_MEMSTAT_INTERNAL));

 if (effective && (p->p_memstat_state & P_MEMSTAT_PRIORITYUPDATED)) {
  ret = EALREADY;
  proc_list_unlock();
  MEMORYSTATUS_DEBUG(1, "memorystatus_update: effective change specified for pid %d, but change already occurred.\n", p->p_pid);
  goto out;
 }

 if ((p->p_memstat_state & P_MEMSTAT_TERMINATED) || ((p->p_listflag & P_LIST_EXITED) != 0)) {



  ret = EBUSY;
  proc_list_unlock();
  goto out;
 }

 p->p_memstat_state |= P_MEMSTAT_PRIORITYUPDATED;
 p->p_memstat_userdata = user_data;
 p->p_memstat_requestedpriority = priority;

 if (update_memlimit) {
  boolean_t is_fatal;
  boolean_t use_active;







  MEMORYSTATUS_DEBUG(3, "memorystatus_update(enter): pid %d, priority %d, dirty=0x%x, Active(%dMB %s), Inactive(%dMB, %s)\n",
       p->p_pid, priority, p->p_memstat_dirty,
       memlimit_active, (memlimit_active_is_fatal ? "F " : "NF"),
       memlimit_inactive, (memlimit_inactive_is_fatal ? "F " : "NF"));

  if (memlimit_active <= 0) {
   if (memlimit_active < 0) {
    memlimit_active = -1;
   }
   memlimit_active_is_fatal = TRUE;
  }

  if (memlimit_inactive <= 0) {





   memlimit_inactive = -1;
   memlimit_inactive_is_fatal = TRUE;
  }




  SET_ACTIVE_LIMITS_LOCKED(p, memlimit_active, memlimit_active_is_fatal);




  SET_INACTIVE_LIMITS_LOCKED(p, memlimit_inactive, memlimit_inactive_is_fatal);
  if (proc_jetsam_state_is_active_locked(p) == TRUE) {
   CACHE_ACTIVE_LIMITS_LOCKED(p, is_fatal);
   use_active = TRUE;
  } else {
   CACHE_INACTIVE_LIMITS_LOCKED(p, is_fatal);
   use_active = FALSE;
  }




  if (memorystatus_highwater_enabled) {

   task_set_phys_footprint_limit_internal(p->task, ((p->p_memstat_memlimit > 0) ? p->p_memstat_memlimit : -1), ((void*)0), use_active, is_fatal);

   MEMORYSTATUS_DEBUG(3, "memorystatus_update: init: limit on pid %d (%dMB %s) targeting priority(%d) dirty?=0x%x %s\n",
        p->p_pid, (p->p_memstat_memlimit > 0 ? p->p_memstat_memlimit : -1),
        (p->p_memstat_state & P_MEMSTAT_FATAL_MEMLIMIT ? "F " : "NF"), priority, p->p_memstat_dirty,
        (p->p_memstat_dirty ? ((p->p_memstat_dirty & P_DIRTY) ? "isdirty" : "isclean") : ""));
  }
 }







 if (isProcessInAgingBands(p)) {

  memorystatus_invalidate_idle_demotion_locked(p, TRUE);
  memorystatus_update_priority_locked(p, JETSAM_PRIORITY_IDLE, FALSE, TRUE);
 } else {
  if (jetsam_aging_policy == kJetsamAgingPolicyLegacy && priority == JETSAM_PRIORITY_IDLE) {
   memorystatus_update_priority_locked(p, priority, head_insert, TRUE);
  }
 }

 memorystatus_update_priority_locked(p, priority, head_insert, FALSE);

 proc_list_unlock();
 ret = 0;

out:
 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_UPDATE) | DBG_FUNC_END, ret, 0, 0, 0, 0);

 return ret;
}
