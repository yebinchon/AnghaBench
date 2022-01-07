
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_ldt; } ;


 int KERNEL_LDT ;
 TYPE_1__* current_cpu_datap () ;
 int lldt (int) ;

void ml_cpu_set_ldt(int selector)
{




 if (selector == KERNEL_LDT &&
     current_cpu_datap()->cpu_ldt == KERNEL_LDT)
  return;

 lldt(selector);
 current_cpu_datap()->cpu_ldt = selector;
}
