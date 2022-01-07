
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct proc {int p_memstat_dirty; } ;


 int EBUSY ;
 int EINVAL ;
 int PROC_DIRTY_ALLOWS_IDLE_EXIT ;
 int PROC_DIRTY_ALLOW_IDLE_EXIT ;
 int PROC_DIRTY_DEFER ;
 int PROC_DIRTY_DEFER_ALWAYS ;
 int PROC_DIRTY_LAUNCH_IN_PROGRESS ;
 int PROC_DIRTY_TRACK ;
 int P_DIRTY_TERMINATED ;

__attribute__((used)) static int
memorystatus_validate_track_flags(struct proc *target_p, uint32_t pcontrol) {

 if (target_p->p_memstat_dirty & P_DIRTY_TERMINATED) {
  return EBUSY;
 }


 if ((pcontrol & PROC_DIRTY_ALLOW_IDLE_EXIT) &&
    !(pcontrol & PROC_DIRTY_TRACK)) {
  return EINVAL;
 }


 if ((pcontrol & PROC_DIRTY_LAUNCH_IN_PROGRESS) &&
    !(pcontrol & PROC_DIRTY_TRACK)) {
  return EINVAL;
 }


 if ((pcontrol & PROC_DIRTY_DEFER) &&
     (pcontrol & PROC_DIRTY_DEFER_ALWAYS)) {
  return EINVAL;
 }


 if (((pcontrol & PROC_DIRTY_DEFER) ||
     (pcontrol & PROC_DIRTY_DEFER_ALWAYS)) &&
    !(pcontrol & PROC_DIRTY_ALLOWS_IDLE_EXIT)) {
  return EINVAL;
 }

 return(0);
}
