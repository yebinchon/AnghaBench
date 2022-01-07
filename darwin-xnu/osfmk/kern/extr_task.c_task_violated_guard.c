
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_exception_subcode_t ;
typedef int mach_exception_code_t ;
typedef int kern_return_t ;


 int PROC_VIOLATED_GUARD__SEND_EXC_GUARD_AND_SUSPEND (int ,int ,void*) ;

kern_return_t
task_violated_guard(
 mach_exception_code_t code,
 mach_exception_subcode_t subcode,
 void *reason)
{
 return PROC_VIOLATED_GUARD__SEND_EXC_GUARD_AND_SUSPEND(code, subcode, reason);
}
