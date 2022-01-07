
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ARM_RD (int ) ;
 scalar_t__ ARM_RM (int ) ;
 scalar_t__ ARM_RN (int ) ;
 scalar_t__ ARM_RS (int ) ;
 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 scalar_t__ REG_PC ;
 int arm_pack_unpack_sat_reversal (int ) ;
 int arm_parallel_addsub_signed (int ) ;
 int arm_parallel_addsub_unsigned (int ) ;
 int arm_signed_multiplies (int ) ;

__attribute__((used)) static
int arm_media(uint32_t instr)
{
 int op1 = BITS(instr,20,0x1F), op2 = BITS(instr,5,0x7);

 if ((op1 & 0x1C) == 0)
  return arm_parallel_addsub_signed(instr);

 if ((op1 & 0x1C) == 0x04)
  return arm_parallel_addsub_unsigned(instr);

 if ((op1 & 0x18) == 0x08)
  return arm_pack_unpack_sat_reversal(instr);

 if ((op1 & 0x18) == 0x10)
  return arm_signed_multiplies(instr);

 if (op1 == 0x1F && op2 == 0x7) {

  return FASTTRAP_T_INV;
 }

 if (op1 == 0x18 && op2 == 0) {




  if (ARM_RM(instr) != REG_PC && ARM_RS(instr) != REG_PC && ARM_RN(instr) != REG_PC)
   return FASTTRAP_T_COMMON;

  return FASTTRAP_T_INV;
 }

 if ((op1 & 0x1E) == 0x1C && (op2 & 0x3) == 0) {

  if (ARM_RD(instr) != REG_PC)
   return FASTTRAP_T_COMMON;

  return FASTTRAP_T_INV;
 }

 if (((op1 & 0x1E) == 0x1A || (op1 & 0x1E) == 0x1E) && ((op2 & 0x3) == 0x2)) {

  if (ARM_RM(instr) != REG_PC && ARM_RD(instr) != REG_PC)
   return FASTTRAP_T_COMMON;

  return FASTTRAP_T_INV;
 }

 return FASTTRAP_T_INV;
}
