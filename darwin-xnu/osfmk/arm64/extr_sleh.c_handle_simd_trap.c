
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ mach_exception_data_type_t ;
typedef int instr ;
typedef int exception_type_t ;
typedef int arm_saved_state_t ;


 int COPYIN (int ,char*,int) ;
 scalar_t__ EXC_ARM_UNDEFINED ;
 int EXC_BAD_INSTRUCTION ;
 scalar_t__ PSR64_IS_KERNEL (int ) ;
 int exception_triage (int ,scalar_t__*,int) ;
 int get_saved_state_cpsr (int *) ;
 int get_saved_state_pc (int *) ;
 int panic (char*,scalar_t__) ;

__attribute__((used)) static void
handle_simd_trap(arm_saved_state_t *state, uint32_t esr)
{
 exception_type_t exception = EXC_BAD_INSTRUCTION;
 mach_exception_data_type_t codes[2] = {EXC_ARM_UNDEFINED};
 mach_msg_type_number_t numcodes = 2;
 uint32_t instr = 0;

 if (PSR64_IS_KERNEL(get_saved_state_cpsr(state))) {
  panic("ESR (0x%x) for SIMD trap from userland, actually came from kernel?", esr);
 }

 COPYIN(get_saved_state_pc(state), (char *)&instr, sizeof(instr));
 codes[1] = instr;

 exception_triage(exception, codes, numcodes);
}
