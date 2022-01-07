
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int lwp_queue ;
struct TYPE_4__ {int node; } ;
struct TYPE_5__ {TYPE_1__ object; int priomap; int cur_state; int * ready; } ;
typedef TYPE_2__ lwp_cntrl ;


 int LWP_STATES_TRANSIENT ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_priomap_removefrom (int *) ;
 int __lwp_queue_extractI (int *) ;
 int __lwp_queue_init_empty (int *) ;
 scalar_t__ __lwp_queue_onenode (int *) ;
 int __lwp_setstate (int ,int ) ;
 scalar_t__ __lwp_stateready (int ) ;

void __lwp_thread_settransient(lwp_cntrl *thethread)
{
 u32 level,oldstates;
 lwp_queue *ready;

 ready = thethread->ready;

 _CPU_ISR_Disable(level);

 oldstates = thethread->cur_state;
 thethread->cur_state = __lwp_setstate(oldstates,LWP_STATES_TRANSIENT);

 if(__lwp_stateready(oldstates)) {
  if(__lwp_queue_onenode(ready)) {
   __lwp_queue_init_empty(ready);
   __lwp_priomap_removefrom(&thethread->priomap);
  } else {
   __lwp_queue_extractI(&thethread->object.node);
  }
 }

 _CPU_ISR_Restore(level);
}
