
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psynch_cvclrprepost_args {int flags; int preposeq; int prepocnt; int cvsgen; int cvugen; int cvgen; int cv; } ;
typedef int proc_t ;
struct TYPE_2__ {int (* psynch_cvclrprepost ) (int ,int ,int ,int ,int ,int ,int ,int ,int*) ;} ;


 TYPE_1__* pthread_functions ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ,int ,int*) ;

int
psynch_cvclrprepost(proc_t p, struct psynch_cvclrprepost_args * uap, int *retval)
{
 return pthread_functions->psynch_cvclrprepost(p, uap->cv, uap->cvgen, uap->cvugen, uap->cvsgen, uap->prepocnt, uap->preposeq, uap->flags, retval);
}
