
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {scalar_t__ p_vforkcnt; int p_lflag; } ;


 int P_LVFORK ;
 int panic (char*) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

void
proc_vfork_end(proc_t parent_proc)
{
 proc_lock(parent_proc);
 parent_proc->p_vforkcnt--;
 if (parent_proc->p_vforkcnt < 0)
  panic("vfork cnt is -ve");
 if (parent_proc->p_vforkcnt == 0)
  parent_proc->p_lflag &= ~P_LVFORK;
 proc_unlock(parent_proc);
}
