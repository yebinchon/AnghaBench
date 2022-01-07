
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {int p_memstat_dirty; scalar_t__ p_memstat_requestedpriority; scalar_t__ p_memstat_effectivepriority; int p_memstat_state; int p_pid; } ;


 scalar_t__ JETSAM_PRIORITY_ELEVATED_INACTIVE ;
 scalar_t__ JETSAM_PRIORITY_IDLE ;
 int MEMORYSTATUS_DEBUG (int,char*,int ,int) ;
 int P_DIRTY_AGING_IN_PROGRESS ;
 int P_DIRTY_IDLE_EXIT_ENABLED ;
 int P_DIRTY_IS_DIRTY ;
 int P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND ;
 int assert (int ) ;
 int isSysProc (TYPE_1__*) ;
 scalar_t__ jetsam_aging_policy ;
 scalar_t__ kJetsamAgingPolicyLegacy ;
 int memorystatus_update_priority_locked (TYPE_1__*,scalar_t__,int,int) ;
 scalar_t__ system_procs_aging_band ;

__attribute__((used)) static void
memorystatus_update_idle_priority_locked(proc_t p) {
 int32_t priority;

 MEMORYSTATUS_DEBUG(1, "memorystatus_update_idle_priority_locked(): pid %d dirty 0x%X\n", p->p_pid, p->p_memstat_dirty);

 assert(isSysProc(p));

 if ((p->p_memstat_dirty & (P_DIRTY_IDLE_EXIT_ENABLED|P_DIRTY_IS_DIRTY)) == P_DIRTY_IDLE_EXIT_ENABLED) {

  priority = (p->p_memstat_dirty & P_DIRTY_AGING_IN_PROGRESS) ? system_procs_aging_band : JETSAM_PRIORITY_IDLE;
 } else {
  priority = p->p_memstat_requestedpriority;
 }

 if (priority != p->p_memstat_effectivepriority) {

  if ((jetsam_aging_policy == kJetsamAgingPolicyLegacy) &&
      (priority == JETSAM_PRIORITY_IDLE)) {
   if (p->p_memstat_state & P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND) {
    priority = JETSAM_PRIORITY_ELEVATED_INACTIVE;
   }

   memorystatus_update_priority_locked(p, priority, 0, 1);

  } else {
   memorystatus_update_priority_locked(p, priority, 0, 0);
  }
 }
}
