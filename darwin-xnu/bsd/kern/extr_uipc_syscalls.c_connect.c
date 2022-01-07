
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct connect_nocancel_args {int dummy; } ;
struct connect_args {int dummy; } ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int connect_nocancel (struct proc*,struct connect_nocancel_args*,int *) ;

int
connect(struct proc *p, struct connect_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return (connect_nocancel(p, (struct connect_nocancel_args *)uap,
     retval));
}
