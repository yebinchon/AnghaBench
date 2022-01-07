
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_type_t ;
typedef int exception_type_t ;
typedef int arm_saved_state_t ;


 int EXC_ARM_UNDEFINED ;
 int EXC_BAD_INSTRUCTION ;
 int assert (int ) ;
 int exception_triage (int ,int *,int) ;
 int get_saved_state_sp (int *) ;

__attribute__((used)) static void
handle_wf_trap(arm_saved_state_t *ss)
{
 exception_type_t exc;
 mach_exception_data_type_t codes[2];
 mach_msg_type_number_t numcodes = 2;

 exc = EXC_BAD_INSTRUCTION;
 codes[0] = EXC_ARM_UNDEFINED;
 codes[1] = get_saved_state_sp(ss);

 exception_triage(exc, codes, numcodes);
 assert(0);
}
