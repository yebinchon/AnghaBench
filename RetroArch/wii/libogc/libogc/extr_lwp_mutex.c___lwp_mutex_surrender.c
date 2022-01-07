
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int nest_behavior; scalar_t__ onlyownerrelease; } ;
struct TYPE_9__ {int nest_cnt; int lock; TYPE_7__ atrrs; TYPE_2__* holder; int wait_queue; } ;
typedef TYPE_1__ lwp_mutex ;
struct TYPE_10__ {scalar_t__ res_cnt; scalar_t__ real_prio; scalar_t__ cur_prio; } ;
typedef TYPE_2__ lwp_cntrl ;





 int LWP_MUTEX_NEST_NOTALLOWED ;
 int LWP_MUTEX_NOTOWNER ;
 int LWP_MUTEX_SUCCESSFUL ;
 int LWP_MUTEX_UNLOCKED ;
 int TRUE ;
 scalar_t__ __lwp_mutex_isinheritprio (TYPE_7__*) ;
 scalar_t__ __lwp_mutex_isprioceiling (TYPE_7__*) ;
 int __lwp_thread_changepriority (TYPE_2__*,scalar_t__,int ) ;
 int __lwp_thread_isexec (TYPE_2__*) ;
 TYPE_2__* __lwp_threadqueue_dequeue (int *) ;

u32 __lwp_mutex_surrender(lwp_mutex *mutex)
{
 lwp_cntrl *thethread;
 lwp_cntrl *holder;

 holder = mutex->holder;

 if(mutex->atrrs.onlyownerrelease) {
  if(!__lwp_thread_isexec(holder))
   return LWP_MUTEX_NOTOWNER;
 }

 if(!mutex->nest_cnt)
  return LWP_MUTEX_SUCCESSFUL;

 mutex->nest_cnt--;
 if(mutex->nest_cnt!=0) {
  switch(mutex->atrrs.nest_behavior) {
   case 130:
    return LWP_MUTEX_SUCCESSFUL;
   case 128:
    return LWP_MUTEX_NEST_NOTALLOWED;
   case 129:
    break;
  }
 }

 if(__lwp_mutex_isinheritprio(&mutex->atrrs) || __lwp_mutex_isprioceiling(&mutex->atrrs))
  holder->res_cnt--;

 mutex->holder = ((void*)0);
 if(__lwp_mutex_isinheritprio(&mutex->atrrs) || __lwp_mutex_isprioceiling(&mutex->atrrs)) {
  if(holder->res_cnt==0 && holder->real_prio!=holder->cur_prio)
   __lwp_thread_changepriority(holder,holder->real_prio,TRUE);
 }

 if((thethread=__lwp_threadqueue_dequeue(&mutex->wait_queue))) {
  mutex->nest_cnt = 1;
  mutex->holder = thethread;
  if(__lwp_mutex_isinheritprio(&mutex->atrrs) || __lwp_mutex_isprioceiling(&mutex->atrrs))
   thethread->res_cnt++;
 } else
  mutex->lock = LWP_MUTEX_UNLOCKED;

 return LWP_MUTEX_SUCCESSFUL;
}
