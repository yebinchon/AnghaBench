
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEBUGGER_NO_CPU ;
 int OSMemoryBarrier () ;
 int assert (int) ;
 scalar_t__ cpu_number () ;
 scalar_t__ debugger_cpu ;

__attribute__((used)) static void
DebuggerUnlock()
{
 assert(debugger_cpu == cpu_number());
 debugger_cpu = DEBUGGER_NO_CPU;
 OSMemoryBarrier();

 return;
}
