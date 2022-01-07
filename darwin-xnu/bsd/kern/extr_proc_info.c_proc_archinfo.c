
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct proc_archinfo {int p_cpusubtype; int p_cputype; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_cpusubtype; int p_cputype; } ;


 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

void
proc_archinfo(proc_t p, struct proc_archinfo *pai)
{
 proc_lock(p);
 pai->p_cputype = p->p_cputype;
 pai->p_cpusubtype = p->p_cpusubtype;
 proc_unlock(p);
}
