
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {scalar_t__ first; } ;
typedef TYPE_2__ lwp_queue ;
struct TYPE_9__ {int node; } ;
struct TYPE_11__ {TYPE_1__ object; TYPE_2__* ready; } ;
typedef TYPE_3__ lwp_cntrl ;


 int TRUE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Flash (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_queue_appendI (TYPE_2__*,int *) ;
 int __lwp_queue_extractI (int *) ;
 int __lwp_queue_onenode (TYPE_2__*) ;
 scalar_t__ __lwp_thread_isheir (TYPE_3__*) ;
 int _context_switch_want ;
 TYPE_3__* _thr_executing ;
 TYPE_3__* _thr_heir ;

void __lwp_thread_yield()
{
 u32 level;
 lwp_cntrl *exec;
 lwp_queue *ready;

 exec = _thr_executing;
 ready = exec->ready;

 _CPU_ISR_Disable(level);
 if(!__lwp_queue_onenode(ready)) {
  __lwp_queue_extractI(&exec->object.node);
  __lwp_queue_appendI(ready,&exec->object.node);
  _CPU_ISR_Flash(level);
  if(__lwp_thread_isheir(exec))
   _thr_heir = (lwp_cntrl*)ready->first;
  _context_switch_want = TRUE;
 } else if(!__lwp_thread_isheir(exec))
  _context_switch_want = TRUE;
 _CPU_ISR_Restore(level);
}
