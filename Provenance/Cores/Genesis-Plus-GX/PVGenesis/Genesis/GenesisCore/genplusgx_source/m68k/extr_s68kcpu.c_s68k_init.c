
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int m68ki_build_opcode_table () ;
 int s68k_set_fc_callback (int *) ;
 int s68k_set_int_ack_callback (int *) ;
 int s68k_set_reset_instr_callback (int *) ;
 int s68k_set_tas_instr_callback (int *) ;

void s68k_init(void)
{
  s68k_set_int_ack_callback(((void*)0));


  s68k_set_reset_instr_callback(((void*)0));


  s68k_set_tas_instr_callback(((void*)0));


  s68k_set_fc_callback(((void*)0));

}
