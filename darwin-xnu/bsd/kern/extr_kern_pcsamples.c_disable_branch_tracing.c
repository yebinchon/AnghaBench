
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_btrace; } ;


 int FALSE ;
 int clr_be_bit () ;
 int pc_sample_pid ;
 int pc_trace_frameworks ;
 struct proc* proc_find (int) ;
 int proc_rele (struct proc*) ;

int
disable_branch_tracing(void)
{
    struct proc *p;
    switch (pc_sample_pid) {
    case -1:
        pc_trace_frameworks = FALSE;
        break;
    case 0:
        break;
    default:
        p = proc_find(pc_sample_pid);
        if (p) {
            p->p_btrace = 0;
   proc_rele(p);
        }
        break;
    }
    clr_be_bit();
    return 1;
}
