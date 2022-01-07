
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int boolean_t ;
struct TYPE_13__ {int p_memstat_dirty; int p_listflag; int p_memstat_state; scalar_t__ p_memstat_idledeadline; int p_memstat_memlimit; int p_memstat_effectivepriority; int p_pid; int task; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_MEMSTAT_DIRTY_SET ;
 int CACHE_ACTIVE_LIMITS_LOCKED (TYPE_1__*,int) ;
 int CACHE_INACTIVE_LIMITS_LOCKED (TYPE_1__*,int) ;
 int DBG_BSD_MEMSTAT ;
 int EALREADY ;
 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 int FALSE ;
 int KERNEL_DEBUG_CONSTANT (int ,int ,int,scalar_t__,int ,int ) ;
 int MEMORYSTATUS_DEBUG (int,char*,int,int,char*,int,...) ;
 int P_DIRTY ;
 int P_DIRTY_AGING_IN_PROGRESS ;
 int P_DIRTY_ALLOW_IDLE_EXIT ;
 int P_DIRTY_DEFER_ALWAYS ;
 int P_DIRTY_IDLE_EXIT_ENABLED ;
 int P_DIRTY_IS_DIRTY ;
 int P_DIRTY_MARKED ;
 int P_DIRTY_SHUTDOWN ;
 int P_DIRTY_TERMINATED ;
 int P_DIRTY_TRACK ;
 int P_LIST_EXITED ;
 int P_MEMSTAT_FATAL_MEMLIMIT ;
 int P_MEMSTAT_INTERNAL ;
 int SIGKILL ;
 int TRUE ;
 scalar_t__ jetsam_aging_policy ;
 scalar_t__ kJetsamAgingPolicyLegacy ;
 scalar_t__ mach_absolute_time () ;
 int memorystatus_dirty_count ;
 scalar_t__ memorystatus_highwater_enabled ;
 int memorystatus_invalidate_idle_demotion_locked (TYPE_1__*,int) ;
 int memorystatus_reschedule_idle_demotion_locked () ;
 int memorystatus_schedule_idle_demotion_locked (TYPE_1__*,int) ;
 int memorystatus_update_idle_priority_locked (TYPE_1__*) ;
 int proc_jetsam_state_is_active_locked (TYPE_1__*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 TYPE_1__* proc_ref_locked (TYPE_1__*) ;
 int proc_rele_locked (TYPE_1__*) ;
 int psignal (TYPE_1__*,int ) ;
 int task_set_phys_footprint_limit_internal (int ,int,int *,int,int) ;

int
memorystatus_dirty_set(proc_t p, boolean_t self, uint32_t pcontrol) {
 int ret;
 boolean_t kill = 0;
 boolean_t reschedule = FALSE;
 boolean_t was_dirty = FALSE;
 boolean_t now_dirty = FALSE;

 MEMORYSTATUS_DEBUG(1, "memorystatus_dirty_set(): %d %d 0x%x 0x%x\n", self, p->p_pid, pcontrol, p->p_memstat_dirty);
 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_DIRTY_SET), p->p_pid, self, pcontrol, 0, 0);

 proc_list_lock();

 if ((p->p_listflag & P_LIST_EXITED) != 0) {



  ret = EBUSY;
  goto exit;
 }

 if (p->p_memstat_state & P_MEMSTAT_INTERNAL) {
  ret = EPERM;
  goto exit;
 }

 if (p->p_memstat_dirty & P_DIRTY_IS_DIRTY)
  was_dirty = TRUE;

 if (!(p->p_memstat_dirty & P_DIRTY_TRACK)) {

  ret = EINVAL;
 } else if (pcontrol && (p->p_memstat_dirty & P_DIRTY_TERMINATED)) {




  ret = EBUSY;
 } else {
  int flag = (self == TRUE) ? P_DIRTY : P_DIRTY_SHUTDOWN;
  if (pcontrol && !(p->p_memstat_dirty & flag)) {

   p->p_memstat_dirty |= (flag | P_DIRTY_MARKED);
   memorystatus_dirty_count++;
   ret = 0;
  } else if ((pcontrol == 0) && (p->p_memstat_dirty & flag)) {
   if ((flag == P_DIRTY_SHUTDOWN) && (!(p->p_memstat_dirty & P_DIRTY))) {

    p->p_memstat_dirty |= P_DIRTY_TERMINATED;
    kill = 1;
   } else if ((flag == P_DIRTY) && (p->p_memstat_dirty & P_DIRTY_TERMINATED)) {

    kill = 1;
   }
   p->p_memstat_dirty &= ~flag;
   memorystatus_dirty_count--;
   ret = 0;
  } else {

   ret = EALREADY;
  }
 }

 if (ret != 0) {
  goto exit;
 }

 if (p->p_memstat_dirty & P_DIRTY_IS_DIRTY)
  now_dirty = TRUE;

 if ((was_dirty == TRUE && now_dirty == FALSE) ||
     (was_dirty == FALSE && now_dirty == TRUE)) {


  if ((p->p_memstat_dirty & P_DIRTY_IDLE_EXIT_ENABLED) == P_DIRTY_IDLE_EXIT_ENABLED) {
   if (p->p_memstat_dirty & P_DIRTY_IS_DIRTY) {






    boolean_t reset_state = (jetsam_aging_policy != kJetsamAgingPolicyLegacy) ? TRUE : FALSE;

    memorystatus_invalidate_idle_demotion_locked(p, reset_state);
    reschedule = TRUE;
   } else {





    if (jetsam_aging_policy == kJetsamAgingPolicyLegacy) {
     if (((p->p_memstat_dirty & P_DIRTY_DEFER_ALWAYS) == FALSE) &&
         (mach_absolute_time() >= p->p_memstat_idledeadline)) {
      memorystatus_invalidate_idle_demotion_locked(p, TRUE);
      reschedule = TRUE;
     } else {







      if (p->p_memstat_dirty & P_DIRTY_DEFER_ALWAYS) {
       memorystatus_schedule_idle_demotion_locked(p, TRUE);
       reschedule = TRUE;
      } else if (p->p_memstat_dirty & P_DIRTY_AGING_IN_PROGRESS) {
       memorystatus_schedule_idle_demotion_locked(p, FALSE);
       reschedule = TRUE;
      }
     }
    } else {

     memorystatus_schedule_idle_demotion_locked(p, TRUE);
     reschedule = TRUE;
    }
   }
  }

  memorystatus_update_idle_priority_locked(p);

  if (memorystatus_highwater_enabled) {
   boolean_t ledger_update_needed = TRUE;
   boolean_t use_active;
   boolean_t is_fatal;





   if (proc_jetsam_state_is_active_locked(p) == TRUE) {





    CACHE_ACTIVE_LIMITS_LOCKED(p, is_fatal);
    use_active = TRUE;
    ledger_update_needed = TRUE;
   } else {







    if (p->p_memstat_dirty & P_DIRTY_ALLOW_IDLE_EXIT) {
     ledger_update_needed = FALSE;
    } else {
     CACHE_INACTIVE_LIMITS_LOCKED(p, is_fatal);
     use_active = FALSE;
     ledger_update_needed = TRUE;
    }
   }
   if (ledger_update_needed && proc_ref_locked(p) == p) {
    int ledger_limit;
    if (p->p_memstat_memlimit > 0) {
     ledger_limit = p->p_memstat_memlimit;
    } else {
     ledger_limit = -1;
    }
    proc_list_unlock();
    task_set_phys_footprint_limit_internal(p->task, ledger_limit, ((void*)0), use_active, is_fatal);
    proc_list_lock();
    proc_rele_locked(p);

    MEMORYSTATUS_DEBUG(3, "memorystatus_dirty_set: new limit on pid %d (%dMB %s) priority(%d) dirty?=0x%x %s\n",
        p->p_pid, (p->p_memstat_memlimit > 0 ? p->p_memstat_memlimit : -1),
        (p->p_memstat_state & P_MEMSTAT_FATAL_MEMLIMIT ? "F " : "NF"), p->p_memstat_effectivepriority, p->p_memstat_dirty,
        (p->p_memstat_dirty ? ((p->p_memstat_dirty & P_DIRTY) ? "isdirty" : "isclean") : ""));
   }

  }


  if (reschedule) {
   memorystatus_reschedule_idle_demotion_locked();
  }
 }

 if (kill) {
  if (proc_ref_locked(p) == p) {
   proc_list_unlock();
   psignal(p, SIGKILL);
   proc_list_lock();
   proc_rele_locked(p);
  }
 }

exit:
 proc_list_unlock();

 return ret;
}
