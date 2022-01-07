
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct psynch_rw_yieldwrlock_args {int flags; int rw_wc; int ugenval; int lgenval; int rwlock; } ;
typedef int proc_t ;
struct TYPE_2__ {int (* psynch_rw_yieldwrlock ) (int ,int ,int ,int ,int ,int ,int *) ;} ;


 TYPE_1__* pthread_functions ;
 int stub1 (int ,int ,int ,int ,int ,int ,int *) ;

int
psynch_rw_yieldwrlock(proc_t p, struct psynch_rw_yieldwrlock_args *uap, uint32_t *retval)
{
 return pthread_functions->psynch_rw_yieldwrlock(p, uap->rwlock, uap->lgenval, uap->ugenval, uap->rw_wc, uap->flags, retval);
}
