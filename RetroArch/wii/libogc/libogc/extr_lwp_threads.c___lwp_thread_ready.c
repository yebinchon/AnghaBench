
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int node; } ;
struct TYPE_9__ {TYPE_1__ object; int ready; int priomap; int cur_state; } ;
typedef TYPE_2__ lwp_cntrl ;
struct TYPE_10__ {scalar_t__ is_preemptible; } ;


 int LWP_STATES_READY ;
 int TRUE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Flash (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_priomap_addto (int *) ;
 int __lwp_queue_appendI (int ,int *) ;
 int __lwp_thread_calcheir () ;
 int __lwp_thread_isexec (TYPE_2__*) ;
 int _context_switch_want ;
 TYPE_5__* _thr_executing ;
 TYPE_2__* _thr_heir ;
 int kprintf (char*,TYPE_2__*) ;

void __lwp_thread_ready(lwp_cntrl *thethread)
{
 u32 level;
 lwp_cntrl *heir;

 _CPU_ISR_Disable(level);



 thethread->cur_state = LWP_STATES_READY;
 __lwp_priomap_addto(&thethread->priomap);
 __lwp_queue_appendI(thethread->ready,&thethread->object.node);
 _CPU_ISR_Flash(level);

 __lwp_thread_calcheir();
 heir = _thr_heir;
 if(!(__lwp_thread_isexec(heir)) && _thr_executing->is_preemptible)
  _context_switch_want = TRUE;

 _CPU_ISR_Restore(level);
}
