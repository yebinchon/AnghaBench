
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int FASTTRAP_T_LDM_PC ;
 int FASTTRAP_T_STM_LR ;
 scalar_t__ REG_PC ;
 scalar_t__ REG_SP ;
 scalar_t__ THUMB32_RN (int ,int ) ;

__attribute__((used)) static
int thumb32_loadstore_multiple(uint16_t instr1, uint16_t instr2)
{
 int op = BITS(instr1,7,0x3), L = BITS(instr1,4,0x1), uses_pc = BITS(instr2,15,0x1), uses_lr = BITS(instr2,14,0x1);

 if (op == 0 || op == 0x3) {

  return FASTTRAP_T_INV;
 }


 if (op == 0x1 && L == 1 && THUMB32_RN(instr1,instr2) == REG_SP && uses_pc == 1)
  return FASTTRAP_T_LDM_PC;


 if (op == 0x2 && L == 0 && THUMB32_RN(instr1,instr2) == REG_SP && uses_lr == 1)
  return FASTTRAP_T_STM_LR;

 if (THUMB32_RN(instr1,instr2) != REG_PC && uses_pc == 0)
  return FASTTRAP_T_COMMON;

 return FASTTRAP_T_INV;
}
