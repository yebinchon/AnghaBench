
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* timer_call_t ;
typedef int timer_call_param_t ;
typedef int timer_call_func_t ;
struct TYPE_5__ {int async_dequeue; int lock; } ;


 int DBG (char*,TYPE_1__*,int ,int ) ;
 int FALSE ;
 int TCE (TYPE_1__*) ;
 int call_entry_setup (int ,int ,int ) ;
 int simple_lock_init (int *,int ) ;

void
timer_call_setup(
 timer_call_t call,
 timer_call_func_t func,
 timer_call_param_t param0)
{
 DBG("timer_call_setup(%p,%p,%p)\n", call, func, param0);
 call_entry_setup(TCE(call), func, param0);
 simple_lock_init(&(call)->lock, 0);
 call->async_dequeue = FALSE;
}
