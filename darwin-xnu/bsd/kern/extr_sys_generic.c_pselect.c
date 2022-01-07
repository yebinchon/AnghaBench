
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pselect_nocancel_args {int dummy; } ;
struct pselect_args {int dummy; } ;
struct proc {int dummy; } ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int pselect_nocancel (struct proc*,struct pselect_nocancel_args*,int *) ;

int
pselect(struct proc *p, struct pselect_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return pselect_nocancel(p, (struct pselect_nocancel_args *)uap, retval);
}
