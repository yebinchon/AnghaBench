
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_call_t ;
typedef int thread_call_param_t ;
typedef int thread_call_func_t ;
typedef int call_entry_t ;
struct TYPE_4__ {int tc_index; } ;


 int THREAD_CALL_INDEX_HIGH ;
 int bzero (TYPE_1__*,int) ;
 int call_entry_setup (int ,int ,int ) ;

void
thread_call_setup(
 thread_call_t call,
 thread_call_func_t func,
 thread_call_param_t param0)
{
 bzero(call, sizeof(*call));
 call_entry_setup((call_entry_t)call, func, param0);


 call->tc_index = THREAD_CALL_INDEX_HIGH;


}
