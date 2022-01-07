
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sendmsg_nocancel_args {int dummy; } ;
struct sendmsg_args {int dummy; } ;
struct proc {int dummy; } ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int sendmsg_nocancel (struct proc*,struct sendmsg_nocancel_args*,int *) ;

int
sendmsg(struct proc *p, struct sendmsg_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return (sendmsg_nocancel(p, (struct sendmsg_nocancel_args *)uap,
     retval));
}
