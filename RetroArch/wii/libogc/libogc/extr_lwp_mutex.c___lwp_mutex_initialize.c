
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int lwp_mutex_attr ;
struct TYPE_4__ {int nest_cnt; int wait_queue; TYPE_2__* holder; scalar_t__ blocked_cnt; scalar_t__ lock; int atrrs; } ;
typedef TYPE_1__ lwp_mutex ;
struct TYPE_5__ {int res_cnt; } ;


 scalar_t__ LWP_MUTEX_LOCKED ;
 int LWP_MUTEX_TIMEOUT ;
 int LWP_STATES_WAITING_FOR_MUTEX ;
 int LWP_THREADQ_MODEFIFO ;
 int LWP_THREADQ_MODEPRIORITY ;
 scalar_t__ __lwp_mutex_isfifo (int *) ;
 scalar_t__ __lwp_mutex_isinheritprio (int *) ;
 scalar_t__ __lwp_mutex_isprioceiling (int *) ;
 int __lwp_threadqueue_init (int *,int ,int ,int ) ;
 TYPE_2__* _thr_executing ;

void __lwp_mutex_initialize(lwp_mutex *mutex,lwp_mutex_attr *attrs,u32 init_lock)
{
 mutex->atrrs = *attrs;
 mutex->lock = init_lock;
 mutex->blocked_cnt = 0;

 if(init_lock==LWP_MUTEX_LOCKED) {
  mutex->nest_cnt = 1;
  mutex->holder = _thr_executing;
  if(__lwp_mutex_isinheritprio(attrs) || __lwp_mutex_isprioceiling(attrs))
   _thr_executing->res_cnt++;
 } else {
  mutex->nest_cnt = 0;
  mutex->holder = ((void*)0);
 }

 __lwp_threadqueue_init(&mutex->wait_queue,__lwp_mutex_isfifo(attrs)?LWP_THREADQ_MODEFIFO:LWP_THREADQ_MODEPRIORITY,LWP_STATES_WAITING_FOR_MUTEX,LWP_MUTEX_TIMEOUT);
}
