
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ARM_RN (int ) ;
 int BITS (int ,int,int) ;
 int FASTTRAP_T_B_COND ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int FASTTRAP_T_LDM_PC ;
 int FASTTRAP_T_STM_LR ;
 scalar_t__ REG_PC ;
 scalar_t__ REG_SP ;

__attribute__((used)) static
int arm_branch_link_blockdata(uint32_t instr)
{
 int branch = BITS(instr,25,0x1), link = BITS(instr,24,0x1), op = BITS(instr,20,0x1F), uses_pc = BITS(instr,15,0x1), uses_lr = BITS(instr,14,0x1);

 if (branch == 1) {
  if (link == 0)
   return FASTTRAP_T_B_COND;
  return FASTTRAP_T_INV;
 } else {

  if (op == 0x0B && ARM_RN(instr) == REG_SP && uses_pc == 1)
   return FASTTRAP_T_LDM_PC;


  if (op == 0x12 && ARM_RN(instr) == REG_SP && uses_lr == 1)
   return FASTTRAP_T_STM_LR;

  if (ARM_RN(instr) != REG_PC && uses_pc == 0)
   return FASTTRAP_T_COMMON;
 }

 return FASTTRAP_T_INV;
}
