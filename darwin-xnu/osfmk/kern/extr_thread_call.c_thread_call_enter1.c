
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* thread_call_t ;
typedef int thread_call_param_t ;
typedef TYPE_3__* thread_call_group_t ;
typedef int spl_t ;
typedef int boolean_t ;
struct TYPE_11__ {int pending_queue; } ;
struct TYPE_9__ {int param1; int * queue; int * func; } ;
struct TYPE_10__ {int tc_flags; TYPE_1__ tc_call; } ;


 int THREAD_CALL_SIGNAL ;
 int TRUE ;
 int _pending_call_enqueue (TYPE_2__*,TYPE_3__*) ;
 int assert (int) ;
 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;
 TYPE_3__* thread_call_get_group (TYPE_2__*) ;

boolean_t
thread_call_enter1(
  thread_call_t call,
  thread_call_param_t param1)
{
 boolean_t result = TRUE;
 thread_call_group_t group;

 assert(call->tc_call.func != ((void*)0));

 assert((call->tc_flags & THREAD_CALL_SIGNAL) == 0);

 group = thread_call_get_group(call);

 spl_t s = disable_ints_and_lock();

 if (call->tc_call.queue != &group->pending_queue) {
  result = _pending_call_enqueue(call, group);
 }

 call->tc_call.param1 = param1;

 enable_ints_and_unlock(s);

 return (result);
}
