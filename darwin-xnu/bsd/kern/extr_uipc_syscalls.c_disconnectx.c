
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct disconnectx_args {int dummy; } ;


 int __pthread_testcancel (int) ;
 int disconnectx_nocancel (struct proc*,struct disconnectx_args*,int*) ;

int
disconnectx(struct proc *p, struct disconnectx_args *uap, int *retval)
{




 __pthread_testcancel(1);
 return (disconnectx_nocancel(p, uap, retval));
}
