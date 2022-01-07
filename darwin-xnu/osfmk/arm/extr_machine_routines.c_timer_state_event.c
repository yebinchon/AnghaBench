
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_8__ {int * thread_timer; int * current_state; int user_state; int system_state; } ;
typedef TYPE_3__ processor_data_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {TYPE_1__* cpu_processor; } ;
struct TYPE_7__ {int user_timer; int system_timer; int precise_user_kernel_time; } ;
struct TYPE_6__ {TYPE_3__ processor_data; } ;


 TYPE_2__* current_thread () ;
 TYPE_4__* getCpuDatap () ;
 int ml_get_timebase () ;
 int timer_start (int *,int ) ;
 int timer_stop (int *,int ) ;

__attribute__((used)) static void
timer_state_event(boolean_t switch_to_kernel)
{
 thread_t thread = current_thread();
 if (!thread->precise_user_kernel_time) return;

 processor_data_t *pd = &getCpuDatap()->cpu_processor->processor_data;
 uint64_t now = ml_get_timebase();

 timer_stop(pd->current_state, now);
 pd->current_state = (switch_to_kernel) ? &pd->system_state : &pd->user_state;
 timer_start(pd->current_state, now);

 timer_stop(pd->thread_timer, now);
 pd->thread_timer = (switch_to_kernel) ? &thread->system_timer : &thread->user_timer;
 timer_start(pd->thread_timer, now);
}
