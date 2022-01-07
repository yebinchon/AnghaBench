
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_B_UNCOND ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int FASTTRAP_T_LDR_PC_IMMED ;
 int thumb16_cond_supervisor (int ) ;
 int thumb16_data_proc (int ) ;
 int thumb16_data_special_and_branch (int ) ;
 int thumb16_loadstore_single (int ) ;
 int thumb16_misc (int ) ;
 int thumb16_shift_addsub_move_compare (int ) ;

__attribute__((used)) static
int dtrace_decode_thumb16(uint16_t instr)
{
 int opcode = BITS(instr,10,0x3F);

 if ((opcode & 0x30) == 0)
  return thumb16_shift_addsub_move_compare(instr);

 if (opcode == 0x10)
  return thumb16_data_proc(instr);

 if (opcode == 0x11)
  return thumb16_data_special_and_branch(instr);

 if ((opcode & 0x3E) == 0x12) {

  return FASTTRAP_T_LDR_PC_IMMED;
 }

 if ((opcode & 0x3C) == 0x14 || (opcode & 0x38) == 0x18 || (opcode & 0x38) == 0x20)
  return thumb16_loadstore_single(instr);

 if ((opcode & 0x3E) == 0x28) {

  return FASTTRAP_T_INV;
 }

 if ((opcode & 0x3E) == 0x2A) {

  return FASTTRAP_T_COMMON;
 }

 if ((opcode & 0x3C) == 0x2C)
  return thumb16_misc(instr);

 if ((opcode & 0x3E) == 0x30) {

  return FASTTRAP_T_COMMON;
 }

 if ((opcode & 0x3E) == 0x32) {

  return FASTTRAP_T_COMMON;
 }

 if ((opcode & 0x3C) == 0x34) {
  return thumb16_cond_supervisor(instr);
 }

 if ((opcode & 0x3E) == 0x38) {

  return FASTTRAP_T_B_UNCOND;
 }

 return FASTTRAP_T_INV;
}
