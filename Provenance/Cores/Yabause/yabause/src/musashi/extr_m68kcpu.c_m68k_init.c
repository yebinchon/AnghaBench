
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int m68k_set_bkpt_ack_callback (int *) ;
 int m68k_set_fc_callback (int *) ;
 int m68k_set_instr_hook_callback (int *) ;
 int m68k_set_int_ack_callback (int *) ;
 int m68k_set_pc_changed_callback (int *) ;
 int m68k_set_reset_instr_callback (int *) ;
 int m68ki_build_opcode_table () ;

void m68k_init(void)
{
 static uint emulation_initialized = 0;


 if(!emulation_initialized)
  {
  m68ki_build_opcode_table();
  emulation_initialized = 1;
 }

 m68k_set_int_ack_callback(((void*)0));
 m68k_set_bkpt_ack_callback(((void*)0));
 m68k_set_reset_instr_callback(((void*)0));
 m68k_set_pc_changed_callback(((void*)0));
 m68k_set_fc_callback(((void*)0));
 m68k_set_instr_hook_callback(((void*)0));
}
