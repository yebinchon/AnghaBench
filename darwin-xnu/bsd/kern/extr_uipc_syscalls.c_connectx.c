
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct connectx_args {int dummy; } ;


 int __pthread_testcancel (int) ;
 int connectx_nocancel (struct proc*,struct connectx_args*,int*) ;

int
connectx(struct proc *p, struct connectx_args *uap, int *retval)
{




 __pthread_testcancel(1);
 return (connectx_nocancel(p, uap, retval));
}
