
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct accept_nocancel_args {int dummy; } ;
struct accept_args {int dummy; } ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int accept_nocancel (struct proc*,struct accept_nocancel_args*,int *) ;

int
accept(struct proc *p, struct accept_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return (accept_nocancel(p, (struct accept_nocancel_args *)uap,
     retval));
}
