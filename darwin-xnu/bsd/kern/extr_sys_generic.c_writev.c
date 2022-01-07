
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_ssize_t ;
struct writev_nocancel_args {int dummy; } ;
struct writev_args {int dummy; } ;
struct proc {int dummy; } ;


 int __pthread_testcancel (int) ;
 int writev_nocancel (struct proc*,struct writev_nocancel_args*,int *) ;

int
writev(struct proc *p, struct writev_args *uap, user_ssize_t *retval)
{
 __pthread_testcancel(1);
 return(writev_nocancel(p, (struct writev_nocancel_args *)uap, retval));
}
