
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int mpqueue_head_t ;
struct TYPE_6__ {scalar_t__ deadline; int queue; } ;
struct TYPE_8__ {TYPE_1__ rtclock_timer; scalar_t__ cpu_running; } ;
typedef TYPE_3__ cpu_data_t ;
struct TYPE_7__ {int queue; } ;
struct TYPE_9__ {TYPE_2__ rtclock_timer; } ;


 TYPE_5__* cpu_datap (int ) ;
 TYPE_3__* getCpuDatap () ;
 int master_cpu ;
 int timer_set_deadline (scalar_t__) ;

mpqueue_head_t *
timer_queue_assign(
 uint64_t deadline)
{
 cpu_data_t *cpu_data_ptr = getCpuDatap();
 mpqueue_head_t *queue;

 if (cpu_data_ptr->cpu_running) {
  queue = &cpu_data_ptr->rtclock_timer.queue;

  if (deadline < cpu_data_ptr->rtclock_timer.deadline)
   timer_set_deadline(deadline);
 }
 else
  queue = &cpu_datap(master_cpu)->rtclock_timer.queue;

 return (queue);
}
