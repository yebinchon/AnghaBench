
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_type_t ;
typedef int exception_type_t ;
typedef int arm_saved_state_t ;


 int EXC_ARM_DA_ALIGN ;
 int EXC_BAD_ACCESS ;
 int PSR64_IS_USER (int ) ;
 int assert (int ) ;
 int exception_triage (int ,int *,int) ;
 int get_saved_state_cpsr (int *) ;
 int get_saved_state_pc (int *) ;
 int panic_with_thread_kernel_state (char*,int *) ;

__attribute__((used)) static void
handle_pc_align(arm_saved_state_t *ss)
{
 exception_type_t exc;
 mach_exception_data_type_t codes[2];
 mach_msg_type_number_t numcodes = 2;

 if (!PSR64_IS_USER(get_saved_state_cpsr(ss))) {
  panic_with_thread_kernel_state("PC alignment exception from kernel.", ss);
 }

 exc = EXC_BAD_ACCESS;
 codes[0] = EXC_ARM_DA_ALIGN;
 codes[1] = get_saved_state_pc(ss);

 exception_triage(exc, codes, numcodes);
 assert(0);
}
