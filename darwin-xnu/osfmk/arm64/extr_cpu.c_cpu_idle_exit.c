
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int (* processor_idle_t ) (int ,int ,int*) ;
struct TYPE_9__ {scalar_t__ idle_timer_notify; int idle_timer_deadline; int cpu_id; scalar_t__ cpu_idle_notify; TYPE_2__* cpu_active_thread; } ;
typedef TYPE_3__ cpu_data_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {TYPE_1__* map; } ;
struct TYPE_7__ {int pmap; } ;


 int FALSE ;
 int Idle_load_context () ;
 int assert (int) ;
 int clock_absolutetime_interval_to_deadline (int,int*) ;
 int configure_coresight_registers (TYPE_3__*) ;
 scalar_t__ exception_stack_pointer () ;
 TYPE_3__* getCpuDatap () ;
 int kpc_idle_exit () ;
 int mt_cpu_run (TYPE_3__*) ;
 int pmap_switch_user_ttb (int ) ;
 int stub1 (int ,int ,int*) ;
 int timer_resync_deadlines () ;

void
cpu_idle_exit(boolean_t from_reset)
{
 uint64_t new_idle_timeout_ticks = 0x0ULL;
 cpu_data_t *cpu_data_ptr = getCpuDatap();

 assert(exception_stack_pointer() != 0);


 if (from_reset)
  configure_coresight_registers(cpu_data_ptr);
 pmap_switch_user_ttb(cpu_data_ptr->cpu_active_thread->map->pmap);

 if (cpu_data_ptr->cpu_idle_notify)
  ((processor_idle_t) cpu_data_ptr->cpu_idle_notify) (cpu_data_ptr->cpu_id, FALSE, &new_idle_timeout_ticks);

 if (cpu_data_ptr->idle_timer_notify != 0) {
  if (new_idle_timeout_ticks == 0x0ULL) {

   cpu_data_ptr->idle_timer_deadline = 0x0ULL;
  } else {

   clock_absolutetime_interval_to_deadline(new_idle_timeout_ticks, &cpu_data_ptr->idle_timer_deadline);
  }
  timer_resync_deadlines();
 }

 Idle_load_context();
}
