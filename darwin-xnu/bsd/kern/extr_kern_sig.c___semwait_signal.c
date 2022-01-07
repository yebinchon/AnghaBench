
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __semwait_signal_nocancel_args {int dummy; } ;
struct __semwait_signal_args {int dummy; } ;
typedef int proc_t ;
typedef int int32_t ;


 int __pthread_testcancel (int ) ;
 int __semwait_signal_nocancel (int ,struct __semwait_signal_nocancel_args*,int *) ;

int
__semwait_signal(proc_t p, struct __semwait_signal_args *uap,
                     int32_t *retval)
{
 __pthread_testcancel(0);
 return(__semwait_signal_nocancel(p, (struct __semwait_signal_nocancel_args *)uap, retval));
}
