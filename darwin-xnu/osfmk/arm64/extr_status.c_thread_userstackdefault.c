
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_offset_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;


 int KERN_SUCCESS ;
 int USRSTACK ;
 int USRSTACK64 ;

kern_return_t
thread_userstackdefault(
 mach_vm_offset_t *default_user_stack,
 boolean_t is64bit)
{
 if (is64bit) {
  *default_user_stack = USRSTACK64;
 } else {
  *default_user_stack = USRSTACK;
 }

 return (KERN_SUCCESS);
}
