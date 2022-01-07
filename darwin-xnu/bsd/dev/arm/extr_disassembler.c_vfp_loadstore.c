
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ARM_RN (int ) ;
 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int FASTTRAP_T_VLDR_PC_IMMED ;
 scalar_t__ REG_PC ;

__attribute__((used)) static
int vfp_loadstore(uint32_t instr)
{
 int opcode = BITS(instr,20,0x1F);


 if ((opcode & 0x13) == 0x11 && ARM_RN(instr) == REG_PC)
  return FASTTRAP_T_VLDR_PC_IMMED;


 if (ARM_RN(instr) != REG_PC)
  return FASTTRAP_T_COMMON;

 return FASTTRAP_T_INV;
}
