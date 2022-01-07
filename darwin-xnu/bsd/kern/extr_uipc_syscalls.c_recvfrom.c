
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recvfrom_nocancel_args {int dummy; } ;
struct recvfrom_args {int dummy; } ;
struct proc {int dummy; } ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int recvfrom_nocancel (struct proc*,struct recvfrom_nocancel_args*,int *) ;

int
recvfrom(struct proc *p, struct recvfrom_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return (recvfrom_nocancel(p, (struct recvfrom_nocancel_args *)uap,
     retval));
}
