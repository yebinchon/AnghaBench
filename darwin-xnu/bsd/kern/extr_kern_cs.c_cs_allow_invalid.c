
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_pid; int p_csflags; int task; int p_mlock; } ;


 int CS_DEBUGGED ;
 int CS_HARD ;
 int CS_KILL ;
 int CS_VALID ;
 int FALSE ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 scalar_t__ cs_debug ;
 int get_task_map (int ) ;
 int lck_mtx_assert (int *,int ) ;
 scalar_t__ mac_proc_check_run_cs_invalid (struct proc*) ;
 int printf (char*,int) ;
 int proc_lock (struct proc*) ;
 int proc_unlock (struct proc*) ;
 int vm_map_switch_protect (int ,int ) ;

int
cs_allow_invalid(struct proc *p)
{
 return (p->p_csflags & (CS_KILL | CS_HARD)) == 0;
}
