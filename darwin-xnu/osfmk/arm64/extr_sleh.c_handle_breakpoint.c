
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_type_t ;
typedef int exception_type_t ;
typedef int arm_saved_state_t ;


 int EXC_ARM_BREAKPOINT ;
 int EXC_BREAKPOINT ;
 int assert (int ) ;
 int exception_triage (int ,int *,int) ;
 int get_saved_state_pc (int *) ;

__attribute__((used)) static void
handle_breakpoint(arm_saved_state_t *state)
{
 exception_type_t exception = EXC_BREAKPOINT;
 mach_exception_data_type_t codes[2] = {EXC_ARM_BREAKPOINT};
 mach_msg_type_number_t numcodes = 2;

 codes[1] = get_saved_state_pc(state);
 exception_triage(exception, codes, numcodes);
 assert(0);
}
