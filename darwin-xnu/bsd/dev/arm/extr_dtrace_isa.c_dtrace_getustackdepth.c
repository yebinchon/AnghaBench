
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int * thread_t ;
struct TYPE_2__ {int * r; int lr; int sp; int pc; } ;
typedef TYPE_1__ savearea_t ;


 int CPU_DTRACE_ENTRY ;
 int CPU_DTRACE_FAULT ;
 scalar_t__ DTRACE_CPUFLAG_ISSET (int ) ;
 int * current_thread () ;
 scalar_t__ dtrace_getustack_common (int *,int ,int ,int ) ;
 scalar_t__ find_user_regs (int *) ;

int
dtrace_getustackdepth(void)
{
 thread_t thread = current_thread();
 savearea_t *regs;
 user_addr_t pc, sp;
 int n = 0;

 if (thread == ((void*)0))
  return 0;

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_FAULT))
  return (-1);

 regs = (savearea_t *) find_user_regs(thread);
 if (regs == ((void*)0))
  return 0;

 pc = regs->pc;
 sp = regs->sp;

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_ENTRY)) {
  n++;
  pc = regs->lr;
 }
 n += dtrace_getustack_common(((void*)0), 0, pc, regs->r[7]);

 return (n);
}
