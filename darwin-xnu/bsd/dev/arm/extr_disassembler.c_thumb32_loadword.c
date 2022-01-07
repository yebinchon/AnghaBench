
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int FASTTRAP_T_LDR_PC_IMMED ;
 scalar_t__ REG_PC ;
 scalar_t__ THUMB32_RM (int ,int ) ;
 scalar_t__ THUMB32_RN (int ,int ) ;
 scalar_t__ THUMB32_RT (int ,int ) ;

__attribute__((used)) static
int thumb32_loadword(uint16_t instr1, uint16_t instr2)
{
 int op1 = BITS(instr1,7,0x3), op2 = BITS(instr2,6,0x3F);

 if ((op1 & 0x2) == 0 && THUMB32_RN(instr1,instr2) == REG_PC && THUMB32_RT(instr1,instr2) != REG_PC)
  return FASTTRAP_T_LDR_PC_IMMED;

 if (op1 == 0 && op2 == 0) {

  if (THUMB32_RM(instr1,instr2) == REG_PC)
   return FASTTRAP_T_INV;
 }

 if (THUMB32_RT(instr1,instr2) != REG_PC && THUMB32_RN(instr1,instr2) != REG_PC)
  return FASTTRAP_T_COMMON;

 return FASTTRAP_T_INV;
}
