
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_BX_REG ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_CPY_PC ;
 int FASTTRAP_T_INV ;
 scalar_t__ REG_PC ;
 scalar_t__ THUMB16_HRD (int ) ;
 scalar_t__ THUMB16_HRM (int ) ;

__attribute__((used)) static
int thumb16_data_special_and_branch(uint16_t instr)
{
 int opcode = BITS(instr,6,0xF);

 if (opcode == 0x4) {

  return FASTTRAP_T_INV;
 } else if ((opcode & 0xC) == 0xC) {


  if ((opcode & 0x2) == 0)
   return FASTTRAP_T_BX_REG;
  return FASTTRAP_T_INV;
 } else {

  if ((opcode & 0xC) == 0x8 && THUMB16_HRD(instr) == REG_PC)
   return FASTTRAP_T_CPY_PC;

  if (THUMB16_HRM(instr) != REG_PC && THUMB16_HRD(instr) != REG_PC)
   return FASTTRAP_T_COMMON;
 }

 return FASTTRAP_T_INV;
}
