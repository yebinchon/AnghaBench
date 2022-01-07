
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int node; } ;
struct TYPE_7__ {int cur_state; scalar_t__ cur_prio; TYPE_1__ object; int ready; int priomap; } ;
typedef TYPE_2__ lwp_cntrl ;
struct TYPE_8__ {scalar_t__ is_preemptible; } ;


 int TRUE ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Flash (int) ;
 int _CPU_ISR_Restore (int) ;
 int __lwp_clearstate (int,int) ;
 int __lwp_priomap_addto (int *) ;
 int __lwp_queue_appendI (int ,int *) ;
 scalar_t__ __lwp_stateready (int) ;
 int _context_switch_want ;
 TYPE_4__* _thr_executing ;
 TYPE_2__* _thr_heir ;

void __lwp_thread_clearstate(lwp_cntrl *thethread,u32 state)
{
 u32 level,cur_state;

 _CPU_ISR_Disable(level);

 cur_state = thethread->cur_state;
 if(cur_state&state) {
  cur_state = thethread->cur_state = __lwp_clearstate(cur_state,state);
  if(__lwp_stateready(cur_state)) {
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
