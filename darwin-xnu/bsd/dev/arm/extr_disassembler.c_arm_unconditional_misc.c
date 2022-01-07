
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 int vfp_struct_loadstore (int ) ;

__attribute__((used)) static
int arm_unconditional_misc(uint32_t instr)
{
 int op = BITS(instr,20,0x7F);

 if ((op & 0x60) == 0x20) {

  return FASTTRAP_T_COMMON;
 }

 if ((op & 0x71) == 0x40) {
  return vfp_struct_loadstore(instr);
 }

 return FASTTRAP_T_INV;
}
