
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_call_t ;
typedef int thread_call_param_t ;
typedef int thread_call_func_t ;
struct TYPE_5__ {int tc_refs; int tc_flags; } ;


 int THREAD_CALL_ALLOC ;
 int thread_call_setup (TYPE_1__*,int ,int ) ;
 int thread_call_zone ;
 TYPE_1__* zalloc (int ) ;

thread_call_t
thread_call_allocate(
  thread_call_func_t func,
  thread_call_param_t param0)
{
 thread_call_t call = zalloc(thread_call_zone);

 thread_call_setup(call, func, param0);
 call->tc_refs = 1;
 call->tc_flags = THREAD_CALL_ALLOC;

 return (call);
}
