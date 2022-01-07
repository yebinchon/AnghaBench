
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_12__ {scalar_t__ prioceil; } ;
struct TYPE_10__ {TYPE_7__ atrrs; int wait_queue; int blocked_cnt; TYPE_3__* holder; } ;
typedef TYPE_2__ lwp_mutex ;
struct TYPE_9__ {scalar_t__ ret_code; } ;
struct TYPE_11__ {scalar_t__ cur_prio; TYPE_1__ wait; } ;
typedef TYPE_3__ lwp_cntrl ;


 int FALSE ;
 scalar_t__ LWP_MUTEX_SUCCESSFUL ;
 scalar_t__ __lwp_mutex_isinheritprio (TYPE_7__*) ;
 scalar_t__ __lwp_mutex_isprioceiling (TYPE_7__*) ;
 int __lwp_thread_changepriority (TYPE_3__*,scalar_t__,int ) ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_threadqueue_enqueue (int *,int ) ;
 TYPE_3__* _thr_executing ;

void __lwp_mutex_seize_irq_blocking(lwp_mutex *mutex,u64 timeout)
{
 lwp_cntrl *exec;

 exec = _thr_executing;
 if(__lwp_mutex_isinheritprio(&mutex->atrrs)){
  if(mutex->holder->cur_prio>exec->cur_prio)
   __lwp_thread_changepriority(mutex->holder,exec->cur_prio,FALSE);
 }

 mutex->blocked_cnt++;
 __lwp_threadqueue_enqueue(&mutex->wait_queue,timeout);

 if(_thr_executing->wait.ret_code==LWP_MUTEX_SUCCESSFUL) {
  if(__lwp_mutex_isprioceiling(&mutex->atrrs)) {
   if(mutex->atrrs.prioceil<exec->cur_prio)
    __lwp_thread_changepriority(exec,mutex->atrrs.prioceil,FALSE);
  }
 }
 __lwp_thread_dispatchenable();
}
