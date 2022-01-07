
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int DBG_MACH_SCHED ;
 int FALSE ;
 int KERNEL_DEBUG_CONSTANT (int ,int,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_REMOTE_AST ;
 int TRUE ;
 int cpu_datap (int) ;
 int i386_cpu_IPI (int) ;
 scalar_t__ pmCPUExitIdle (int ) ;
 scalar_t__ smp_initialized ;

void
cpu_interrupt(int cpu)
{
 boolean_t did_IPI = FALSE;

 if (smp_initialized
     && pmCPUExitIdle(cpu_datap(cpu))) {
  i386_cpu_IPI(cpu);
  did_IPI = TRUE;
 }

 KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED, MACH_REMOTE_AST), cpu, did_IPI, 0, 0, 0);
}
