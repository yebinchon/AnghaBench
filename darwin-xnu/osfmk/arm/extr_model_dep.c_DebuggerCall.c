
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_saved_state {int dummy; } ;


 int alternate_debugger_enter () ;
 int kdp_trap (unsigned int,struct arm_saved_state*) ;

void
DebuggerCall(
 unsigned int reason,
 void *ctx)
{

#pragma unused(reason,ctx)
}
