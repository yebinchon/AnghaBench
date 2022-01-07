
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_t ;
typedef int kern_return_t ;
typedef int exception_type_t ;


 int current_thread () ;
 int exception_triage_thread (int ,int ,int ,int ) ;

kern_return_t
exception_triage(
 exception_type_t exception,
 mach_exception_data_t code,
 mach_msg_type_number_t codeCnt)
{
 thread_t thread = current_thread();
 return exception_triage_thread(exception, code, codeCnt, thread);
}
