
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct select_nocancel_args {int dummy; } ;
struct select_args {int dummy; } ;
struct proc {int dummy; } ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int select_nocancel (struct proc*,struct select_nocancel_args*,int *) ;

int
select(struct proc *p, struct select_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return select_nocancel(p, (struct select_nocancel_args *)uap, retval);
}
