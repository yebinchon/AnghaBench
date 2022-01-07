
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int lwp_queue ;
struct TYPE_6__ {int node; } ;
struct TYPE_7__ {TYPE_1__ object; int priomap; int cur_state; int suspendcnt; int * ready; } ;
typedef TYPE_2__ lwp_cntrl ;


 int LWP_STATES_SUSPENDED ;
 int TRUE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Flash (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_priomap_removefrom (int *) ;
 int __lwp_queue_extractI (int *) ;
 int __lwp_queue_init_empty (int *) ;
 scalar_t__ __lwp_queue_onenode (int *) ;
 int __lwp_setstate (int ,int ) ;
 int __lwp_stateready (int ) ;
 int __lwp_thread_calcheir () ;
 scalar_t__ __lwp_thread_isexec (TYPE_2__*) ;
 scalar_t__ __lwp_thread_isheir (TYPE_2__*) ;
 int _context_switch_want ;

void __lwp_thread_suspend(lwp_cntrl *thethread)
{
 u32 level;
 lwp_queue *ready;

 ready = thethread->ready;

 _CPU_ISR_Disable(level);
 thethread->suspendcnt++;
 if(!__lwp_stateready(thethread->cur_state)) {
  thethread->cur_state = __lwp_setstate(thethread->cur_state,LWP_STATES_SUSPENDED);
  _CPU_ISR_Restore(level);
  return;
 }

 thethread->cur_state = LWP_STATES_SUSPENDED;
 if(__lwp_queue_onenode(ready)) {
  __lwp_queue_init_empty(ready);
  __lwp_priomap_removefrom(&thethread->priomap);
 } else {
  __lwp_queue_extractI(&thethread->object.node);
 }
 _CPU_ISR_Flash(level);

 if(__lwp_thread_isheir(thethread))
  __lwp_thread_calcheir();

 if(__lwp_thread_isexec(thethread))
  _context_switch_want = TRUE;

 _CPU_ISR_Restore(level);
}
