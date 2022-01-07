
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_call_param_t ;
typedef TYPE_1__* thread_call_group_t ;
typedef int * thread_call_func_t ;
typedef int spl_t ;
typedef int boolean_t ;
struct TYPE_4__ {int * delayed_queues; int pending_queue; } ;


 size_t TCF_ABSOLUTE ;
 size_t TCF_CONTINUOUS ;
 size_t THREAD_CALL_INDEX_HIGH ;
 int _cancel_func_from_queue (int *,int ,TYPE_1__*,int,int *) ;
 int assert (int ) ;
 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;
 TYPE_1__* thread_call_groups ;

boolean_t
thread_call_func_cancel(
  thread_call_func_t func,
  thread_call_param_t param,
  boolean_t cancel_all)
{
 boolean_t result;

 assert(func != ((void*)0));

 spl_t s = disable_ints_and_lock();


 thread_call_group_t group = &thread_call_groups[THREAD_CALL_INDEX_HIGH];

 if (cancel_all) {

  result = _cancel_func_from_queue(func, param, group, cancel_all, &group->pending_queue) |
           _cancel_func_from_queue(func, param, group, cancel_all, &group->delayed_queues[TCF_ABSOLUTE]) |
           _cancel_func_from_queue(func, param, group, cancel_all, &group->delayed_queues[TCF_CONTINUOUS]);
 } else {

  result = _cancel_func_from_queue(func, param, group, cancel_all, &group->pending_queue) ||
           _cancel_func_from_queue(func, param, group, cancel_all, &group->delayed_queues[TCF_ABSOLUTE]) ||
           _cancel_func_from_queue(func, param, group, cancel_all, &group->delayed_queues[TCF_CONTINUOUS]);
 }

 enable_ints_and_unlock(s);

 return (result);
}
