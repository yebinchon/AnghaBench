
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int quantum_timer_deadline; } ;
typedef TYPE_1__ cpu_data_t ;


 scalar_t__ FALSE ;
 int assert (int) ;
 TYPE_1__* getCpuDatap () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int timer_resync_deadlines () ;

void
quantum_timer_set_deadline(uint64_t deadline)
{
 cpu_data_t *cpu_data_ptr;


 assert(ml_get_interrupts_enabled() == FALSE);

 cpu_data_ptr = getCpuDatap();
 cpu_data_ptr->quantum_timer_deadline = deadline;
 timer_resync_deadlines();
}
