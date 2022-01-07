
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
 scalar_t__ THUMB32_RN (int ,int ) ;

__attribute__((used)) static
int thumb32_dataproc_plain_immed(uint16_t instr1, uint16_t instr2)
{
 int op = BITS(instr1,4,0x1F);

 if (op == 0x04 || op == 0x0C || op == 0x16) {


  if (THUMB32_RD(instr1,instr2) != REG_PC)
   return FASTTRAP_T_COMMON;
 } else {
  if (THUMB32_RD(instr1,instr2) != REG_PC && THUMB32_RN(instr1,instr2) != REG_PC)
   return FASTTRAP_T_COMMON;
 }

 return FASTTRAP_T_INV;
}
