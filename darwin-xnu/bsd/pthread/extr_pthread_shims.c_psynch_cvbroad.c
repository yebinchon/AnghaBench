
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct psynch_cvbroad_args {int tid; int mugen; int mutex; int flags; int cvudgen; int cvlsgen; int cv; } ;
typedef int proc_t ;
struct TYPE_2__ {int (* psynch_cvbroad ) (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;} ;


 TYPE_1__* pthread_functions ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;

int
psynch_cvbroad(proc_t p, struct psynch_cvbroad_args *uap, uint32_t *retval)
{
 return pthread_functions->psynch_cvbroad(p, uap->cv, uap->cvlsgen, uap->cvudgen, uap->flags, uap->mutex, uap->mugen, uap->tid, retval);
}
