
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int node; } ;
struct TYPE_7__ {scalar_t__ suspendcnt; scalar_t__ cur_state; scalar_t__ cur_prio; TYPE_1__ object; int ready; int priomap; } ;
typedef TYPE_2__ lwp_cntrl ;
struct TYPE_8__ {scalar_t__ is_preemptible; } ;


 scalar_t__ LWP_STATES_SUSPENDED ;
 scalar_t__ TRUE ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Flash (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 scalar_t__ __lwp_clearstate (scalar_t__,scalar_t__) ;
 int __lwp_priomap_addto (int *) ;
 int __lwp_queue_appendI (int ,int *) ;
 scalar_t__ __lwp_stateready (scalar_t__) ;
 scalar_t__ _context_switch_want ;
 TYPE_4__* _thr_executing ;
 TYPE_2__* _thr_heir ;

void __lwp_thread_resume(lwp_cntrl *thethread,u32 force)
{
 u32 level,state;

 _CPU_ISR_Disable(level);

 if(force==TRUE)
  thethread->suspendcnt = 0;
 else
  thethread->suspendcnt--;

 if(thethread->suspendcnt>0) {
  _CPU_ISR_Restore(level);
  return;
 }

 state = thethread->cur_state;
 if(state&LWP_STATES_SUSPENDED) {
  state = thethread->cur_state = __lwp_clearstate(thethread->cur_state,LWP_STATES_SUSPENDED);
  if(__lwp_stateready(state)) {
   __lwp_priomap_addto(&thethread->priomap);
   __lwp_queue_appendI(thethread->ready,&thethread->object.node);
   _CPU_ISR_Flash(level);
   if(thethread->cur_prio<_thr_heir->cur_prio) {
    _thr_heir = thethread;
    if(_thr_executing->is_preemptible
     || thethread->cur_prio==0)
    _context_switch_want = TRUE;
   }
  }
 }
 _CPU_ISR_Restore(level);
}
