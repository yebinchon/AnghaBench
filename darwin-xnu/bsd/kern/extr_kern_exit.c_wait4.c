
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait4_nocancel_args {int dummy; } ;
struct wait4_args {int dummy; } ;
typedef int proc_t ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int wait4_nocancel (int ,struct wait4_nocancel_args*,int *) ;

int
wait4(proc_t q, struct wait4_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return(wait4_nocancel(q, (struct wait4_nocancel_args *)uap, retval));
}
