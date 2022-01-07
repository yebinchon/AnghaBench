
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUGGER_NO_CPU ;
 scalar_t__ FALSE ;
 int assert (int) ;
 int atomic_compare_exchange_strong (int*,int*,int) ;
 int cpu_number () ;
 int debugger_cpu ;
 scalar_t__ ml_get_interrupts_enabled () ;

__attribute__((used)) static void
DebuggerLock()
{
 int my_cpu = cpu_number();
 int debugger_exp_cpu = DEBUGGER_NO_CPU;
 assert(ml_get_interrupts_enabled() == FALSE);

 if (debugger_cpu == my_cpu) {
  return;
 }

 while(!atomic_compare_exchange_strong(&debugger_cpu, &debugger_exp_cpu, my_cpu)) {
  debugger_exp_cpu = DEBUGGER_NO_CPU;
 }

 return;
}
