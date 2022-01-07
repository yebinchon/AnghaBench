
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_interrupt_t ;
typedef int mach_exception_data_type_t ;
typedef int kern_return_t ;
typedef int exception_type_t ;


 int EXCEPTION_CODE_MAX ;
 int KERN_SUCCESS ;
 int THREAD_UNINT ;
 int exception_triage (int ,int *,int) ;
 int thread_interrupt_level (int ) ;

kern_return_t task_exception_notify(exception_type_t exception,
 mach_exception_data_type_t exccode, mach_exception_data_type_t excsubcode)
{
 mach_exception_data_type_t code[EXCEPTION_CODE_MAX];
 wait_interrupt_t wsave;
 kern_return_t kr = KERN_SUCCESS;

 code[0] = exccode;
 code[1] = excsubcode;

 wsave = thread_interrupt_level(THREAD_UNINT);
 kr = exception_triage(exception, code, EXCEPTION_CODE_MAX);
 (void) thread_interrupt_level(wsave);
 return kr;
}
