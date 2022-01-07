
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int (* idle_timer_t ) (int ,int*) ;
struct TYPE_3__ {void* idle_timer_notify; int idle_timer_deadline; int idle_timer_refcon; } ;
typedef TYPE_1__ cpu_data_t ;
typedef int boolean_t ;


 int FALSE ;
 int clock_absolutetime_interval_to_deadline (int,int*) ;
 TYPE_1__* getCpuDatap () ;
 int ml_set_interrupts_enabled (int ) ;
 int stub1 (int ,int*) ;
 int timer_resync_deadlines () ;

void
cpu_idle_tickle(void)
{
 boolean_t intr;
 cpu_data_t *cpu_data_ptr;
 uint64_t new_idle_timeout_ticks = 0x0ULL;

 intr = ml_set_interrupts_enabled(FALSE);
 cpu_data_ptr = getCpuDatap();

 if (cpu_data_ptr->idle_timer_notify != (void *)((void*)0)) {
  ((idle_timer_t)cpu_data_ptr->idle_timer_notify)(cpu_data_ptr->idle_timer_refcon, &new_idle_timeout_ticks);
  if (new_idle_timeout_ticks != 0x0ULL) {

   clock_absolutetime_interval_to_deadline(new_idle_timeout_ticks, &cpu_data_ptr->idle_timer_deadline);
  } else {

   cpu_data_ptr->idle_timer_deadline = 0x0ULL;
  }
  timer_resync_deadlines();
 }
 (void) ml_set_interrupts_enabled(intr);
}
