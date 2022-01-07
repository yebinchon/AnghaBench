
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_vforkcnt; int p_lflag; } ;


 int P_LVFORK ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

void
proc_vfork_begin(proc_t parent_proc)
{
 proc_lock(parent_proc);
 parent_proc->p_lflag |= P_LVFORK;
 parent_proc->p_vforkcnt++;
 proc_unlock(parent_proc);
}
