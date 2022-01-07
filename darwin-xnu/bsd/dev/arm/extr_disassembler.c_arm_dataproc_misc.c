
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ARM_RD (int ) ;
 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 scalar_t__ REG_PC ;
 int arm_dataproc_immed (int ) ;
 int arm_dataproc_reg (int ) ;
 int arm_dataproc_regshift (int ) ;
 int arm_extra_loadstore (int ) ;
 int arm_extra_loadstore_unpriv (int ) ;
 int arm_halfword_multiply (int ) ;
 int arm_misc (int ) ;
 int arm_msr_hints (int ) ;
 int arm_multiply (int ) ;
 int arm_sync_primitive (int ) ;

__attribute__((used)) static
int arm_dataproc_misc(uint32_t instr)
{
 int op = BITS(instr,25,0x1), op1 = BITS(instr,20,0x1F), op2 = BITS(instr,4,0xF);

 if (op == 0) {
  if ((op1 & 0x19) != 0x10 && (op2 & 0x1) == 0)
   return arm_dataproc_reg(instr);

  if ((op1 & 0x19) != 0x10 && (op2 & 0x9) == 0x1)
   return arm_dataproc_regshift(instr);

  if ((op1 & 0x19) == 0x10 && (op2 & 0x8) == 0)
   return arm_misc(instr);

  if ((op1 & 0x19) == 0x19 && (op2 & 0x9) == 0x8)
   return arm_halfword_multiply(instr);

  if ((op1 & 0x10) == 0 && op2 == 0x9)
   return arm_multiply(instr);

  if ((op1 & 0x10) == 0x10 && op2 == 0x9)
   return arm_sync_primitive(instr);

  if ((op1 & 0x12) != 0x02 && (op2 == 0xB || (op2 & 0xD) == 0xD))
   return arm_extra_loadstore(instr);

  if ((op1 & 0x12) == 0x02 && (op2 == 0xB || (op2 & 0xD) == 0xD))
   return arm_extra_loadstore_unpriv(instr);
 } else {
  if ((op1 & 0x19) != 0x10)
   return arm_dataproc_immed(instr);

  if (op1 == 0x10) {

   if (ARM_RD(instr) != REG_PC)
    return FASTTRAP_T_COMMON;

   return FASTTRAP_T_INV;
  }

  if (op1 == 0x14) {

   if (ARM_RD(instr) != REG_PC)
    return FASTTRAP_T_COMMON;

   return FASTTRAP_T_INV;
  }

  if ((op1 & 0x1B) == 0x12)
   return arm_msr_hints(instr);
 }

 return FASTTRAP_T_INV;
}
