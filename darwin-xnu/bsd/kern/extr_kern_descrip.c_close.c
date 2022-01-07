
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct close_nocancel_args {int dummy; } ;
struct close_args {int dummy; } ;
typedef int proc_t ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int close_nocancel (int ,struct close_nocancel_args*,int *) ;

int
close(proc_t p, struct close_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return(close_nocancel(p, (struct close_nocancel_args *)uap, retval));
}
