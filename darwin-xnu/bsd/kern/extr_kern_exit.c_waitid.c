
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitid_nocancel_args {int dummy; } ;
struct waitid_args {int dummy; } ;
typedef int proc_t ;
typedef int int32_t ;


 int __pthread_testcancel (int) ;
 int waitid_nocancel (int ,struct waitid_nocancel_args*,int *) ;

int
waitid(proc_t q, struct waitid_args *uap, int32_t *retval)
{
 __pthread_testcancel(1);
 return (waitid_nocancel(q, (struct waitid_nocancel_args *)uap, retval));
}
