
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sendto_nocancel_args {int dummy; } ;
struct sendto_args {int dummy; } ;
struct proc {int dummy; } ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int sendto_nocancel (struct proc*,struct sendto_nocancel_args*,int *) ;

int
sendto(struct proc *p, struct sendto_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return (sendto_nocancel(p, (struct sendto_nocancel_args *)uap, retval));
}
