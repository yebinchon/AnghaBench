
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditon_args {int dummy; } ;
typedef int proc_t ;
typedef int int32_t ;


 int ENOSYS ;

int
auditon(proc_t p, struct auditon_args *uap, int32_t *retval)
{
#pragma unused(p, uap, retval)

 return (ENOSYS);
}
