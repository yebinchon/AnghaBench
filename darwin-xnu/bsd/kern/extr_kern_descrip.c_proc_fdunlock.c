
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_fdmlock; } ;


 int lck_mtx_unlock (int *) ;

void
proc_fdunlock(proc_t p)
{
 lck_mtx_unlock(&p->p_fdmlock);
}
