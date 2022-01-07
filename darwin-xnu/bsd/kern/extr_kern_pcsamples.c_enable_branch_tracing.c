
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_btrace; } ;


 int TRUE ;
 int pc_sample_pid ;
 int pc_trace_frameworks ;
 struct proc* proc_find (int) ;
 int proc_rele (struct proc*) ;

int
enable_branch_tracing(void)
{
  struct proc *p;
  if (-1 != pc_sample_pid) {
    p = proc_find(pc_sample_pid);
    if (p) {
      p->p_btrace = 1;
  proc_rele(p);
    }
  }
  else {
    pc_trace_frameworks = TRUE;
  }

  return 1;

}
