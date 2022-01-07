
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s64 ;
struct TYPE_3__ {int budget_algo; int cpu_time_budget; int cur_state; int is_preemptible; } ;
typedef TYPE_1__ lwp_cntrl ;




 int __lwp_stateready (int ) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 int __lwp_thread_resettimeslice () ;
 int __lwp_wd_insert_ticks (int *,int ) ;
 int _lwp_ticks_per_timeslice ;
 int _lwp_wd_timeslice ;
 TYPE_1__* _thr_executing ;
 int millisecs_to_ticks (int) ;

void __lwp_thread_tickle_timeslice(void *arg)
{
 s64 ticks;
 lwp_cntrl *exec;

 exec = _thr_executing;
 ticks = millisecs_to_ticks(1);

 __lwp_thread_dispatchdisable();

 if(!exec->is_preemptible) {
  __lwp_wd_insert_ticks(&_lwp_wd_timeslice,ticks);
  __lwp_thread_dispatchunnest();
  return;
 }
 if(!__lwp_stateready(exec->cur_state)) {
  __lwp_wd_insert_ticks(&_lwp_wd_timeslice,ticks);
  __lwp_thread_dispatchunnest();
  return;
 }

 switch(exec->budget_algo) {
  case 129:
   break;
  case 128:
   if((--exec->cpu_time_budget)==0) {
    __lwp_thread_resettimeslice();
    exec->cpu_time_budget = _lwp_ticks_per_timeslice;
   }
   break;
 }

 __lwp_wd_insert_ticks(&_lwp_wd_timeslice,ticks);
 __lwp_thread_dispatchunnest();
}
