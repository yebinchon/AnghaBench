
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CPUclock; } ;


 TYPE_1__ currentConfig ;
 int plat_target_cpu_clock_get () ;

void pemu_validate_config(void)
{
 currentConfig.CPUclock = plat_target_cpu_clock_get();
}
