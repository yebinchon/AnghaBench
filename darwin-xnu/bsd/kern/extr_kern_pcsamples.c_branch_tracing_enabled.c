
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_btrace; } ;


 scalar_t__ TRUE ;
 struct proc* current_proc () ;
 scalar_t__ pc_trace_frameworks ;

int
branch_tracing_enabled(void)
{
  struct proc *p = current_proc();
  if (TRUE == pc_trace_frameworks) return TRUE;
  if (p) {
    return (p->p_btrace);
  }
  return 0;
}
