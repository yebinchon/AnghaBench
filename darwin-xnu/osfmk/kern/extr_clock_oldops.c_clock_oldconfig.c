
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int timer_call_func_t ;
typedef int thread_call_func_t ;
typedef TYPE_2__* clock_t ;
struct TYPE_5__ {TYPE_1__* cl_ops; } ;
struct TYPE_4__ {scalar_t__ (* c_config ) () ;} ;


 scalar_t__ alarm_done ;
 int alarm_done_call ;
 scalar_t__ alarm_expire ;
 int alarm_expire_timer ;
 int alarm_lock ;
 scalar_t__ alrm_seqno ;
 int clock_count ;
 TYPE_2__* clock_list ;
 int simple_lock_init (int *,int ) ;
 scalar_t__ stub1 () ;
 int thread_call_setup (int *,int ,int *) ;
 int timer_call_setup (int *,int ,int *) ;

void
clock_oldconfig(void)
{
 clock_t clock;
 int i;

 simple_lock_init(&alarm_lock, 0);
 thread_call_setup(&alarm_done_call, (thread_call_func_t)alarm_done, ((void*)0));
 timer_call_setup(&alarm_expire_timer, (timer_call_func_t)alarm_expire, ((void*)0));




 for (i = 0; i < clock_count; i++) {
  clock = &clock_list[i];
  if (clock->cl_ops && clock->cl_ops->c_config) {
   if ((*clock->cl_ops->c_config)() == 0)
    clock->cl_ops = ((void*)0);
  }
 }


 alrm_seqno = 0;
}
