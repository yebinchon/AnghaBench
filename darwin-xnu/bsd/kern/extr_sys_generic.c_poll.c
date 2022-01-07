
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct poll_nocancel_args {int dummy; } ;
struct poll_args {int dummy; } ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int poll_nocancel (struct proc*,struct poll_nocancel_args*,int *) ;

int
poll(struct proc *p, struct poll_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return(poll_nocancel(p, (struct poll_nocancel_args *)uap, retval));
}
