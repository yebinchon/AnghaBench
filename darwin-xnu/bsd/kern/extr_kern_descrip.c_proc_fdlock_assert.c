
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_fdmlock; } ;


 int lck_mtx_assert (int *,int) ;

void
proc_fdlock_assert(proc_t p, int assertflags)
{
 lck_mtx_assert(&p->p_fdmlock, assertflags);
}
