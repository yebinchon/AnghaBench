
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_ssize_t ;
struct proc {int dummy; } ;
struct pread_nocancel_args {int dummy; } ;
struct pread_args {int dummy; } ;


 int __pthread_testcancel (int) ;
 int pread_nocancel (struct proc*,struct pread_nocancel_args*,int *) ;

int
pread(struct proc *p, struct pread_args *uap, user_ssize_t *retval)
{
 __pthread_testcancel(1);
 return(pread_nocancel(p, (struct pread_nocancel_args *)uap, retval));
}
