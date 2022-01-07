
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_t ;
typedef int * processor_t ;
typedef int boolean_t ;
struct TYPE_3__ {int system_timer; int user_timer; } ;


 int FALSE ;
 int PROCESSOR_DATA (int *,int ) ;
 int * current_processor () ;
 TYPE_1__* current_thread () ;
 int mach_absolute_time () ;
 int ml_set_interrupts_enabled (int ) ;
 int thread_timer ;
 scalar_t__ timer_grab (int *) ;
 int timer_update (int ,int ) ;

uint64_t thread_get_runtime_self(void)
{
 boolean_t interrupt_state;
 uint64_t runtime;
 thread_t thread = ((void*)0);
 processor_t processor = ((void*)0);

 thread = current_thread();


 interrupt_state = ml_set_interrupts_enabled(FALSE);
 processor = current_processor();
 timer_update(PROCESSOR_DATA(processor, thread_timer), mach_absolute_time());
 runtime = (timer_grab(&thread->user_timer) + timer_grab(&thread->system_timer));
 ml_set_interrupts_enabled(interrupt_state);

 return runtime;
}
