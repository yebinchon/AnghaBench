
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ARM_RD (int ) ;
 scalar_t__ ARM_RM (int ) ;
 scalar_t__ ARM_RN (int ) ;
 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int FASTTRAP_T_LDR_PC_IMMED ;
 scalar_t__ REG_PC ;

__attribute__((used)) static
int arm_loadstore_wordbyte(uint32_t instr)
{

 int R = BITS(instr,25,0x1), L = BITS(instr,20,0x1);

 if (R == 1) {

  if (ARM_RM(instr) != REG_PC && ARM_RD(instr) != REG_PC && ARM_RN(instr) != REG_PC)
   return FASTTRAP_T_COMMON;
 } else {

  if (L == 1 && ARM_RN(instr) == REG_PC && ARM_RD(instr) != REG_PC)
   return FASTTRAP_T_LDR_PC_IMMED;

  if (ARM_RD(instr) != REG_PC && ARM_RN(instr) != REG_PC)
   return FASTTRAP_T_COMMON;
 }

 return FASTTRAP_T_INV;
}
