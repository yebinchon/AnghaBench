
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perfcontrol_cpu_counters {scalar_t__ cycles; scalar_t__ instructions; } ;


 int mt_perfcontrol (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void
machine_switch_populate_perfcontrol_cpu_counters(struct perfcontrol_cpu_counters *cpu_counters)
{



 cpu_counters->instructions = 0;
 cpu_counters->cycles = 0;

}
