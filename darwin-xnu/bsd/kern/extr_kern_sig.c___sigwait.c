
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sigwait_nocancel_args {int dummy; } ;
struct __sigwait_args {int dummy; } ;
typedef int proc_t ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int __sigwait_nocancel (int ,struct __sigwait_nocancel_args*,int *) ;

int
__sigwait(proc_t p, struct __sigwait_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return(__sigwait_nocancel(p, (struct __sigwait_nocancel_args *)uap, retval));
}
