
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct psynch_mutexwait_args {int flags; int tid; int ugen; int mgen; int mutex; } ;
typedef int proc_t ;
struct TYPE_2__ {int (* psynch_mutexwait ) (int ,int ,int ,int ,int ,int ,int *) ;} ;


 TYPE_1__* pthread_functions ;
 int stub1 (int ,int ,int ,int ,int ,int ,int *) ;

int
psynch_mutexwait(proc_t p, struct psynch_mutexwait_args *uap, uint32_t *retval)
{
 return pthread_functions->psynch_mutexwait(p, uap->mutex, uap->mgen, uap->ugen, uap->tid, uap->flags, retval);
}
