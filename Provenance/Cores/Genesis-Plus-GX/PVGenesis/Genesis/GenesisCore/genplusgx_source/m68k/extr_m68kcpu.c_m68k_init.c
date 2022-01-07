
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int m68k_set_fc_callback (int *) ;
 int m68k_set_int_ack_callback (int *) ;
 int m68k_set_reset_instr_callback (int *) ;
 int m68k_set_tas_instr_callback (int *) ;
 int m68ki_build_opcode_table () ;

void m68k_init(void)
{
  m68k_set_int_ack_callback(((void*)0));


  m68k_set_reset_instr_callback(((void*)0));


  m68k_set_tas_instr_callback(((void*)0));


  m68k_set_fc_callback(((void*)0));

}
