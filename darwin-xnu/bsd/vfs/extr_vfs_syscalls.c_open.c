
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_nocancel_args {int dummy; } ;
struct open_args {int dummy; } ;
typedef int proc_t ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int open_nocancel (int ,struct open_nocancel_args*,int *) ;

int
open(proc_t p, struct open_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return(open_nocancel(p, (struct open_nocancel_args *)uap, retval));
}
