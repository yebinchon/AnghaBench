
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_slock; } ;


 int lck_spin_lock (int *) ;

void
proc_spinlock(proc_t p)
{
 lck_spin_lock(&p->p_slock);
}
