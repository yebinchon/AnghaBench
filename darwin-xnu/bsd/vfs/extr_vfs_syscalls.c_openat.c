
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openat_nocancel_args {int dummy; } ;
struct openat_args {int dummy; } ;
typedef int proc_t ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int openat_nocancel (int ,struct openat_nocancel_args*,int *) ;

int
openat(proc_t p, struct openat_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return(openat_nocancel(p, (struct openat_nocancel_args *)uap, retval));
}
