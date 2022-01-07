
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_register_t ;


 void* CPU_PREF_ADDR ;
 int FLAG_M ;
 int FLAG_S ;
 int MASK_OUT_ABOVE_16 (unsigned int) ;
 void* MASK_OUT_ABOVE_32 (unsigned int) ;
 void** REG_A ;
 void* REG_CAAR ;
 void* REG_CACR ;
 void** REG_D ;
 unsigned int REG_DFC ;
 int REG_IR ;
 void* REG_ISP ;
 void* REG_MSP ;
 void* REG_PPC ;
 unsigned int REG_SFC ;
 void* REG_SP ;
 void* REG_USP ;
 void* REG_VBR ;
 int m68k_set_cpu_type (unsigned int) ;
 int m68ki_jump (void*) ;
 int m68ki_set_sr (unsigned int) ;

void m68k_set_reg(m68k_register_t regnum, unsigned int value)
{
 switch(regnum)
 {
  case 147: REG_D[0] = MASK_OUT_ABOVE_32(value); return;
  case 146: REG_D[1] = MASK_OUT_ABOVE_32(value); return;
  case 145: REG_D[2] = MASK_OUT_ABOVE_32(value); return;
  case 144: REG_D[3] = MASK_OUT_ABOVE_32(value); return;
  case 143: REG_D[4] = MASK_OUT_ABOVE_32(value); return;
  case 142: REG_D[5] = MASK_OUT_ABOVE_32(value); return;
  case 141: REG_D[6] = MASK_OUT_ABOVE_32(value); return;
  case 140: REG_D[7] = MASK_OUT_ABOVE_32(value); return;
  case 158: REG_A[0] = MASK_OUT_ABOVE_32(value); return;
  case 157: REG_A[1] = MASK_OUT_ABOVE_32(value); return;
  case 156: REG_A[2] = MASK_OUT_ABOVE_32(value); return;
  case 155: REG_A[3] = MASK_OUT_ABOVE_32(value); return;
  case 154: REG_A[4] = MASK_OUT_ABOVE_32(value); return;
  case 153: REG_A[5] = MASK_OUT_ABOVE_32(value); return;
  case 152: REG_A[6] = MASK_OUT_ABOVE_32(value); return;
  case 151: REG_A[7] = MASK_OUT_ABOVE_32(value); return;
  case 135: m68ki_jump(MASK_OUT_ABOVE_32(value)); return;
  case 130: m68ki_set_sr(value); return;
  case 131: REG_SP = MASK_OUT_ABOVE_32(value); return;
  case 129: if(FLAG_S)
        REG_USP = MASK_OUT_ABOVE_32(value);
       else
        REG_SP = MASK_OUT_ABOVE_32(value);
       return;
  case 137: if(FLAG_S && !FLAG_M)
        REG_SP = MASK_OUT_ABOVE_32(value);
       else
        REG_ISP = MASK_OUT_ABOVE_32(value);
       return;
  case 136: if(FLAG_S && FLAG_M)
        REG_SP = MASK_OUT_ABOVE_32(value);
       else
        REG_MSP = MASK_OUT_ABOVE_32(value);
       return;
  case 128: REG_VBR = MASK_OUT_ABOVE_32(value); return;
  case 132: REG_SFC = value & 7; return;
  case 139: REG_DFC = value & 7; return;
  case 149: REG_CACR = MASK_OUT_ABOVE_32(value); return;
  case 150: REG_CAAR = MASK_OUT_ABOVE_32(value); return;
  case 134: REG_PPC = MASK_OUT_ABOVE_32(value); return;
  case 138: REG_IR = MASK_OUT_ABOVE_16(value); return;
  case 133: CPU_PREF_ADDR = MASK_OUT_ABOVE_32(value); return;
  case 148: m68k_set_cpu_type(value); return;
  default: return;
 }
}
