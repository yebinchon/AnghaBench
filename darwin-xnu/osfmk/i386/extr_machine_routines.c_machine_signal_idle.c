
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
struct TYPE_3__ {int cpu_id; } ;


 int cpu_interrupt (int ) ;

void
machine_signal_idle(
        processor_t processor)
{
 cpu_interrupt(processor->cpu_id);
}
