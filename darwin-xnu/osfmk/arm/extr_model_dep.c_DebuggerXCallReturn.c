
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ debugger_active; } ;
typedef TYPE_1__ cpu_data_t ;


 int DMB_ISH ;
 int __builtin_arm_dmb (int ) ;
 scalar_t__ debugger_sync ;
 TYPE_1__* getCpuDatap () ;
 scalar_t__ mp_kdp_trap ;

void
DebuggerXCallReturn(
 void)
{
 cpu_data_t *cpu_data_ptr = getCpuDatap();

 cpu_data_ptr->debugger_active--;
 if (cpu_data_ptr->debugger_active != 0)
  return;

 mp_kdp_trap = 0;
 debugger_sync = 0;


 __builtin_arm_dmb(DMB_ISH);
}
