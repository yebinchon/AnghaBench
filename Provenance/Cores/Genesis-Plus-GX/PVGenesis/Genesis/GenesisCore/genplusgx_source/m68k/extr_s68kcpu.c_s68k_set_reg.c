
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_register_t ;


 void* CPU_PREF_ADDR ;
 int FLAG_S ;
 int MASK_OUT_ABOVE_16 (unsigned int) ;
 void* MASK_OUT_ABOVE_32 (unsigned int) ;
 void** REG_A ;
 void** REG_D ;
 int REG_IR ;
 void* REG_ISP ;
 void* REG_SP ;
 void* REG_USP ;
 int m68ki_jump (void*) ;
 int m68ki_set_sr (unsigned int) ;

void s68k_set_reg(m68k_register_t regnum, unsigned int value)
{
  switch(regnum)
  {
    case 142: REG_D[0] = MASK_OUT_ABOVE_32(value); return;
    case 141: REG_D[1] = MASK_OUT_ABOVE_32(value); return;
    case 140: REG_D[2] = MASK_OUT_ABOVE_32(value); return;
    case 139: REG_D[3] = MASK_OUT_ABOVE_32(value); return;
    case 138: REG_D[4] = MASK_OUT_ABOVE_32(value); return;
    case 137: REG_D[5] = MASK_OUT_ABOVE_32(value); return;
    case 136: REG_D[6] = MASK_OUT_ABOVE_32(value); return;
    case 135: REG_D[7] = MASK_OUT_ABOVE_32(value); return;
    case 150: REG_A[0] = MASK_OUT_ABOVE_32(value); return;
    case 149: REG_A[1] = MASK_OUT_ABOVE_32(value); return;
    case 148: REG_A[2] = MASK_OUT_ABOVE_32(value); return;
    case 147: REG_A[3] = MASK_OUT_ABOVE_32(value); return;
    case 146: REG_A[4] = MASK_OUT_ABOVE_32(value); return;
    case 145: REG_A[5] = MASK_OUT_ABOVE_32(value); return;
    case 144: REG_A[6] = MASK_OUT_ABOVE_32(value); return;
    case 143: REG_A[7] = MASK_OUT_ABOVE_32(value); return;
    case 132: m68ki_jump(MASK_OUT_ABOVE_32(value)); return;
    case 129: m68ki_set_sr(value); return;
    case 130: REG_SP = MASK_OUT_ABOVE_32(value); return;
    case 128: if(FLAG_S)
                REG_USP = MASK_OUT_ABOVE_32(value);
              else
                REG_SP = MASK_OUT_ABOVE_32(value);
              return;
    case 133: if(FLAG_S)
                REG_SP = MASK_OUT_ABOVE_32(value);
              else
                REG_ISP = MASK_OUT_ABOVE_32(value);
              return;
    case 134: REG_IR = MASK_OUT_ABOVE_16(value); return;



    default: return;
  }
}
