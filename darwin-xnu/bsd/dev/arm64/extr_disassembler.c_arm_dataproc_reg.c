
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
 int FASTTRAP_T_MOV_PC_REG ;
 scalar_t__ REG_PC ;

__attribute__((used)) static
int arm_dataproc_reg(uint32_t instr)
{
 int op1 = BITS(instr,20,0x1F), op2 = BITS(instr,7,0x1F), op3 = BITS(instr,5,0x3);

 if (op1 == 0x11 || op1 == 0x13 || op1 == 0x15 || op1 == 0x17) {

  if (ARM_RN(instr) != REG_PC && ARM_RM(instr) != REG_PC)
   return FASTTRAP_T_COMMON;

  return FASTTRAP_T_INV;
 }





 if (op1 == 0x1A && op2 == 0 && op3 == 0 && ARM_RD(instr) == REG_PC)
  return FASTTRAP_T_MOV_PC_REG;


 if (ARM_RN(instr) != REG_PC && ARM_RD(instr) != REG_PC && ARM_RM(instr) != REG_PC)
  return FASTTRAP_T_COMMON;

 return FASTTRAP_T_INV;
}
