
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recvmsg_nocancel_args {int dummy; } ;
struct recvmsg_args {int dummy; } ;
struct proc {int dummy; } ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int recvmsg_nocancel (struct proc*,struct recvmsg_nocancel_args*,int *) ;

int
recvmsg(struct proc *p, struct recvmsg_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return (recvmsg_nocancel(p, (struct recvmsg_nocancel_args *)uap,
     retval));
}
