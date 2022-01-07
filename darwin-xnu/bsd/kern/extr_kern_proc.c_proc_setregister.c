
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_lflag; } ;


 int P_LREGISTER ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

void
proc_setregister(proc_t p)
{
 proc_lock(p);
 p->p_lflag |= P_LREGISTER;
 proc_unlock(p);
}
