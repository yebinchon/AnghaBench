
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_suspend_nocancel_args {int dummy; } ;
struct aio_suspend_args {int dummy; } ;
typedef int proc_t ;


 int __pthread_testcancel (int) ;
 int aio_suspend_nocancel (int ,struct aio_suspend_nocancel_args*,int*) ;

int
aio_suspend(proc_t p, struct aio_suspend_args *uap, int *retval )
{
 __pthread_testcancel(1);
 return(aio_suspend_nocancel(p, (struct aio_suspend_nocancel_args *)uap, retval));
}
