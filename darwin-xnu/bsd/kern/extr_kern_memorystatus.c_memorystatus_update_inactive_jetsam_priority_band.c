
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int pid_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int p_memstat_state; int p_memstat_effectivepriority; scalar_t__ p_memstat_memlimit; int task; } ;


 int CACHE_ACTIVE_LIMITS_LOCKED (TYPE_1__*,scalar_t__) ;
 int EINVAL ;
 int ESRCH ;
 scalar_t__ FALSE ;
 int JETSAM_PRIORITY_IDLE ;
 scalar_t__ MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_DISABLE ;
 scalar_t__ MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_ENABLE ;
 int P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND ;
 scalar_t__ TRUE ;
 scalar_t__ isProcessInAgingBands (TYPE_1__*) ;
 scalar_t__ memorystatus_highwater_enabled ;
 int memorystatus_invalidate_idle_demotion_locked (TYPE_1__*,scalar_t__) ;
 int memorystatus_update_priority_locked (TYPE_1__*,int,scalar_t__,scalar_t__) ;
 TYPE_1__* proc_find (int ) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_rele (TYPE_1__*) ;
 int task_set_phys_footprint_limit_internal (int ,int,int *,scalar_t__,scalar_t__) ;

int
memorystatus_update_inactive_jetsam_priority_band(pid_t pid, uint32_t op_flags, int jetsam_prio, boolean_t effective_now)
{
 int error = 0;
 boolean_t enable = FALSE;
 proc_t p = ((void*)0);

 if (op_flags == MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_ENABLE) {
  enable = TRUE;
 } else if (op_flags == MEMORYSTATUS_CMD_ELEVATED_INACTIVEJETSAMPRIORITY_DISABLE) {
  enable = FALSE;
 } else {
  return EINVAL;
 }

 p = proc_find(pid);
 if (p != ((void*)0)) {

  if ((enable && ((p->p_memstat_state & P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND) == P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND)) ||
      (!enable && ((p->p_memstat_state & P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND) == 0))) {




  } else {

   proc_list_lock();

   if (enable) {
    p->p_memstat_state |= P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND;
    memorystatus_invalidate_idle_demotion_locked(p, TRUE);

    if (effective_now) {
     if (p->p_memstat_effectivepriority < jetsam_prio) {
      if(memorystatus_highwater_enabled) {





       boolean_t is_fatal;
       boolean_t use_active = TRUE;
       CACHE_ACTIVE_LIMITS_LOCKED(p, is_fatal);
       task_set_phys_footprint_limit_internal(p->task, (p->p_memstat_memlimit > 0) ? p->p_memstat_memlimit : -1, ((void*)0), use_active, is_fatal);
      }
      memorystatus_update_priority_locked(p, jetsam_prio, FALSE, FALSE);
     }
    } else {
     if (isProcessInAgingBands(p)) {
      memorystatus_update_priority_locked(p, JETSAM_PRIORITY_IDLE, FALSE, TRUE);
     }
    }
   } else {

    p->p_memstat_state &= ~P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND;
    memorystatus_invalidate_idle_demotion_locked(p, TRUE);

    if (effective_now) {
     if (p->p_memstat_effectivepriority == jetsam_prio) {
      memorystatus_update_priority_locked(p, JETSAM_PRIORITY_IDLE, FALSE, TRUE);
     }
    } else {
     if (isProcessInAgingBands(p)) {
      memorystatus_update_priority_locked(p, JETSAM_PRIORITY_IDLE, FALSE, TRUE);
     }
    }
   }

   proc_list_unlock();
  }
  proc_rele(p);
  error = 0;

 } else {
  error = ESRCH;
 }

 return error;
}
