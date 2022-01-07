
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int vfp_64transfer (int ) ;
 int vfp_loadstore (int ) ;
 int vfp_transfer (int ) ;

__attribute__((used)) static
int arm_syscall_coproc(uint32_t instr)
{


 int op1 = BITS(instr,20,0x3F), coproc = BITS(instr,8,0xF), op = BITS(instr,4,0x1);

 if ((op1 & 0x3E) == 0 || (op1 & 0x30) == 0x30) {

  return FASTTRAP_T_INV;
 }

 if ((coproc & 0xE) == 0xA) {


  if ((op1 & 0x20) == 0 && (op1 & 0x3A) != 0)
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
