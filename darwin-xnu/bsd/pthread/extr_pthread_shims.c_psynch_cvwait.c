
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct psynch_cvwait_args {int nsec; int sec; int flags; int mugen; int mutex; int cvugen; int cvlsgen; int cv; } ;
typedef int proc_t ;
struct TYPE_2__ {int (* psynch_cvwait ) (int ,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;} ;


 TYPE_1__* pthread_functions ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;

int
psynch_cvwait(proc_t p, struct psynch_cvwait_args * uap, uint32_t * retval)
{
 return pthread_functions->psynch_cvwait(p, uap->cv, uap->cvlsgen, uap->cvugen, uap->mutex, uap->mugen, uap->flags, uap->sec, uap->nsec, retval);
}
