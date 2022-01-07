
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_ssize_t ;
struct pwrite_nocancel_args {int dummy; } ;
struct pwrite_args {int dummy; } ;
struct proc {int dummy; } ;


 int __pthread_testcancel (int) ;
 int pwrite_nocancel (struct proc*,struct pwrite_nocancel_args*,int *) ;

int
pwrite(struct proc *p, struct pwrite_args *uap, user_ssize_t *retval)
{
 __pthread_testcancel(1);
 return(pwrite_nocancel(p, (struct pwrite_nocancel_args *)uap, retval));
}
