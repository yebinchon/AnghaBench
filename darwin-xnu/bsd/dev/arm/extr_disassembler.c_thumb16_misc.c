
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_CB_N_Z ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int FASTTRAP_T_POP_PC ;
 int FASTTRAP_T_PUSH_LR ;

__attribute__((used)) static
int thumb16_misc(uint16_t instr)
{
 int opcode = BITS(instr,5,0x7F);

 if ((opcode & 0x70) == 0x30 || (opcode & 0x70) == 0x70) {

  return FASTTRAP_T_INV;
 } else if ((opcode & 0x78) == 0x28) {

  return FASTTRAP_T_PUSH_LR;
 } else if ((opcode & 0x78) == 0x68) {
  return FASTTRAP_T_POP_PC;
 } else if ((opcode & 0x28) == 0x08) {
  return FASTTRAP_T_CB_N_Z;
 }


 return FASTTRAP_T_COMMON;
}
