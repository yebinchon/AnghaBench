
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_state_t ;
typedef int mach_port_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_t ;
typedef int kern_return_t ;
typedef int exception_type_t ;


 int KERN_NOT_SUPPORTED ;
 int T_FAIL (char*) ;

kern_return_t
catch_mach_exception_raise_state(mach_port_t exception_port,
                                 exception_type_t exception,
                                 const mach_exception_data_t code,
                                 mach_msg_type_number_t code_count,
                                 int * flavor,
                                 const thread_state_t old_state,
                                 mach_msg_type_number_t old_state_count,
                                 thread_state_t new_state,
                                 mach_msg_type_number_t * new_state_count)
{
#pragma unused(exception_port, exception, code, code_count, flavor, old_state, old_state_count, new_state, new_state_count)
 T_FAIL("Unsupported catch_mach_exception_raise_state");
 return KERN_NOT_SUPPORTED;
}
