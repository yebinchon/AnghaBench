
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct peeloff_args {int dummy; } ;


 int __pthread_testcancel (int) ;

int
peeloff(struct proc *p, struct peeloff_args *uap, int *retval)
{
#pragma unused(p, uap, retval)




 __pthread_testcancel(1);
 return (0);
}
