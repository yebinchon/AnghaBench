
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int logical_cpu; int physical_cpu; } ;


 int hw_atomic_add (int *,int) ;
 TYPE_1__ machine_info ;

void
ml_cpu_up(void)
{
 hw_atomic_add(&machine_info.physical_cpu, 1);
 hw_atomic_add(&machine_info.logical_cpu, 1);
}
