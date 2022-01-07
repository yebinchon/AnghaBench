
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 scalar_t__ REG_PC ;
 scalar_t__ THUMB32_RD (int ,int ) ;
 scalar_t__ THUMB32_RM (int ,int ) ;
 scalar_t__ THUMB32_RN (int ,int ) ;
 int thumb32_misc (int ,int ) ;
 int thumb32_parallel_addsub_signed (int ,int ) ;
 int thumb32_parallel_addsub_unsigned (int ,int ) ;

__attribute__((used)) static
int thumb32_dataproc_reg(uint16_t instr1, uint16_t instr2)
{
 int op1 = BITS(instr1,4,0xF), op2 = BITS(instr2,4,0xF);

 if (((0 <= op1) && (op1 <= 5)) && (op2 & 0x8) == 0x8) {
  if (THUMB32_RM(instr1,instr2) != REG_PC && THUMB32_RD(instr1,instr2) != REG_PC)
   return FASTTRAP_T_COMMON;
 }

 if ((op1 & 0x8) == 0 && op2 == 0) {
  if (THUMB32_RM(instr1,instr2) != REG_PC && THUMB32_RD(instr1,instr2) != REG_PC && THUMB32_RN(instr1,instr2) != REG_PC)
   return FASTTRAP_T_COMMON;
 }

 if ((op1 & 0x8) == 0x8 && (op2 & 0xC) == 0)
  return thumb32_parallel_addsub_signed(instr1,instr2);

 if ((op1 & 0x8) == 0x8 && (op2 & 0xC) == 0x4)
  return thumb32_parallel_addsub_unsigned(instr1,instr2);

 if ((op1 & 0xC) == 0x8 && (op2 & 0xC) == 0x8)
  return thumb32_misc(instr1,instr2);

 return FASTTRAP_T_INV;
}
