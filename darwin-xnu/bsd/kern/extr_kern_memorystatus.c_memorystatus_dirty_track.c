
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_7__ {unsigned int p_memstat_dirty; int p_listflag; int p_memstat_state; int p_pid; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_MEMSTAT_DIRTY_TRACK ;
 int DBG_BSD_MEMSTAT ;
 int EBUSY ;
 int EPERM ;
 scalar_t__ FALSE ;
 int KERNEL_DEBUG_CONSTANT (int ,int ,unsigned int,int,int ,int ) ;
 int MEMORYSTATUS_DEBUG (int,char*,char*,char*,char*,int ) ;
 int PROC_DIRTY_ALLOW_IDLE_EXIT ;
 int PROC_DIRTY_DEFER ;
 int PROC_DIRTY_DEFER_ALWAYS ;
 int PROC_DIRTY_LAUNCH_IN_PROGRESS ;
 int PROC_DIRTY_TRACK ;
 int P_DIRTY ;
 unsigned int P_DIRTY_AGING_IN_PROGRESS ;
 unsigned int P_DIRTY_ALLOW_IDLE_EXIT ;
 unsigned int P_DIRTY_DEFER ;
 unsigned int P_DIRTY_DEFER_ALWAYS ;
 int P_DIRTY_IDLE_EXIT_ENABLED ;
 int P_DIRTY_IS_DIRTY ;
 unsigned int P_DIRTY_LAUNCH_IN_PROGRESS ;
 unsigned int P_DIRTY_TRACK ;
 int P_LIST_EXITED ;
 int P_MEMSTAT_INTERNAL ;
 scalar_t__ TRUE ;
 scalar_t__ jetsam_aging_policy ;
 scalar_t__ kJetsamAgingPolicyLegacy ;
 int memorystatus_invalidate_idle_demotion_locked (TYPE_1__*,scalar_t__) ;
 int memorystatus_reschedule_idle_demotion_locked () ;
 int memorystatus_schedule_idle_demotion_locked (TYPE_1__*,scalar_t__) ;
 int memorystatus_update_idle_priority_locked (TYPE_1__*) ;
 int memorystatus_validate_track_flags (TYPE_1__*,int) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

int
memorystatus_dirty_track(proc_t p, uint32_t pcontrol) {
 unsigned int old_dirty;
 boolean_t reschedule = FALSE;
 boolean_t already_deferred = FALSE;
 boolean_t defer_now = FALSE;
 int ret = 0;

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_DIRTY_TRACK),
  p->p_pid, p->p_memstat_dirty, pcontrol, 0, 0);

 proc_list_lock();

 if ((p->p_listflag & P_LIST_EXITED) != 0) {



  ret = EBUSY;
  goto exit;
 }

 if (p->p_memstat_state & P_MEMSTAT_INTERNAL) {
  ret = EPERM;
  goto exit;
 }

 if ((ret = memorystatus_validate_track_flags(p, pcontrol)) != 0) {

  goto exit;
 }

        old_dirty = p->p_memstat_dirty;


 if (pcontrol & PROC_DIRTY_TRACK) {
  p->p_memstat_dirty |= P_DIRTY_TRACK;
 }

 if (pcontrol & PROC_DIRTY_ALLOW_IDLE_EXIT) {
  p->p_memstat_dirty |= P_DIRTY_ALLOW_IDLE_EXIT;
 }

 if (pcontrol & PROC_DIRTY_LAUNCH_IN_PROGRESS) {
  p->p_memstat_dirty |= P_DIRTY_LAUNCH_IN_PROGRESS;
 }

 if (old_dirty & P_DIRTY_AGING_IN_PROGRESS) {
  already_deferred = TRUE;
 }



 if (pcontrol & (PROC_DIRTY_DEFER | PROC_DIRTY_DEFER_ALWAYS)) {

  if ((pcontrol & (PROC_DIRTY_DEFER)) &&
      !(old_dirty & P_DIRTY_DEFER)) {
   p->p_memstat_dirty |= P_DIRTY_DEFER;
  }

  if ((pcontrol & (PROC_DIRTY_DEFER_ALWAYS)) &&
      !(old_dirty & P_DIRTY_DEFER_ALWAYS)) {
   p->p_memstat_dirty |= P_DIRTY_DEFER_ALWAYS;
  }

  defer_now = TRUE;
 }

 MEMORYSTATUS_DEBUG(1, "memorystatus_on_track_dirty(): set idle-exit %s / defer %s / dirty %s for pid %d\n",
  ((p->p_memstat_dirty & P_DIRTY_IDLE_EXIT_ENABLED) == P_DIRTY_IDLE_EXIT_ENABLED) ? "Y" : "N",
  defer_now ? "Y" : "N",
  p->p_memstat_dirty & P_DIRTY ? "Y" : "N",
  p->p_pid);


 if (!(p->p_memstat_dirty & P_DIRTY_IS_DIRTY)) {
  if ((p->p_memstat_dirty & P_DIRTY_IDLE_EXIT_ENABLED) == P_DIRTY_IDLE_EXIT_ENABLED) {

   if (defer_now && !already_deferred) {






    memorystatus_schedule_idle_demotion_locked(p, TRUE);
    reschedule = TRUE;

   } else if (!defer_now) {






    if (already_deferred) {






     memorystatus_invalidate_idle_demotion_locked(p, TRUE);
    } else {






     memorystatus_schedule_idle_demotion_locked(p, TRUE);
    }

    reschedule = TRUE;
   }
  }
 } else {
  if (!defer_now && already_deferred) {
   memorystatus_invalidate_idle_demotion_locked(p, TRUE);
   reschedule = TRUE;
  } else {

   boolean_t reset_state = (jetsam_aging_policy != kJetsamAgingPolicyLegacy) ? TRUE : FALSE;

   memorystatus_invalidate_idle_demotion_locked(p, reset_state);
   reschedule = TRUE;
  }
 }

 memorystatus_update_idle_priority_locked(p);

 if (reschedule) {
  memorystatus_reschedule_idle_demotion_locked();
 }

 ret = 0;

exit:
 proc_list_unlock();

 return ret;
}
