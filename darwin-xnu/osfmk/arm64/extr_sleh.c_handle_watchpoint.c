
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_type_t ;
typedef int exception_type_t ;


 int EXC_ARM_DA_DEBUG ;
 int EXC_BREAKPOINT ;
 int assert (int ) ;
 int exception_triage (int ,int *,int) ;

__attribute__((used)) static void
handle_watchpoint(vm_offset_t fault_addr)
{
 exception_type_t exception = EXC_BREAKPOINT;
 mach_exception_data_type_t codes[2] = {EXC_ARM_DA_DEBUG};
 mach_msg_type_number_t numcodes = 2;

 codes[1] = fault_addr;
 exception_triage(exception, codes, numcodes);
 assert(0);
}
