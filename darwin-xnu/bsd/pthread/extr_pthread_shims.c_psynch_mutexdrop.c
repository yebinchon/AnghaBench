
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct psynch_mutexdrop_args {int flags; int tid; int ugen; int mgen; int mutex; } ;
typedef int proc_t ;
struct TYPE_2__ {int (* psynch_mutexdrop ) (int ,int ,int ,int ,int ,int ,int *) ;} ;


 TYPE_1__* pthread_functions ;
 int stub1 (int ,int ,int ,int ,int ,int ,int *) ;

int
psynch_mutexdrop(proc_t p, struct psynch_mutexdrop_args *uap, uint32_t *retval)
{
 return pthread_functions->psynch_mutexdrop(p, uap->mutex, uap->mgen, uap->ugen, uap->tid, uap->flags, retval);
}
