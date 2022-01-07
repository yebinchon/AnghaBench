
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ is_preemptible; int cur_state; } ;
typedef TYPE_1__ lwp_cntrl ;


 int FALSE ;
 int TRUE ;
 int __lwp_stateready (int ) ;
 int __lwp_thread_isheir (TYPE_1__*) ;
 int _context_switch_want ;
 TYPE_1__* _thr_executing ;

u32 __lwp_evaluatemode()
{
 lwp_cntrl *exec;

 exec = _thr_executing;
 if(!__lwp_stateready(exec->cur_state)
  || (!__lwp_thread_isheir(exec) && exec->is_preemptible)){
  _context_switch_want = TRUE;
  return TRUE;
 }
 return FALSE;
}
