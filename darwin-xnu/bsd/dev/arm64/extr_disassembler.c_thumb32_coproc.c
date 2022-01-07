
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int thumb32_instword_to_arm (int ,int ) ;
 int vfp_64transfer (int ) ;
 int vfp_loadstore (int ) ;
 int vfp_transfer (int ) ;

__attribute__((used)) static
int thumb32_coproc(uint16_t instr1, uint16_t instr2)
{


 int op1 = BITS(instr1,4,0x3F), coproc = BITS(instr2,8,0xF), op = BITS(instr2,4,0x1);

 if ((op1 & 0x3E) == 0) {

  return FASTTRAP_T_INV;
 }

 if ((coproc & 0xE) == 0xA || (op1 & 0x30) == 0x30) {

  uint32_t instr = thumb32_instword_to_arm(instr1,instr2);

  if ((op1 & 0x30) == 0x30) {

   return FASTTRAP_T_COMMON;
  }

  if ((op1 & 0x3A) == 0x02 || (op1 & 0x38) == 0x08 || (op1 & 0x30) == 0x10)
   return vfp_loadstore(instr);

  if ((op1 & 0x3E) == 0x04)
   return vfp_64transfer(instr);

  if ((op1 & 0x30) == 0x20) {

   if (op == 0) {

    return FASTTRAP_T_COMMON;
   } else {
    return vfp_transfer(instr);
   }
  }
 }

 return FASTTRAP_T_INV;
}
