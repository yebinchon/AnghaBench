
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;


 size_t CYC_SHIFT ;
 size_t DY ;
 size_t FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 size_t FLAG_X ;
 size_t FLAG_Z ;
 scalar_t__ GET_MSB_8 (size_t) ;
 size_t MASK_OUT_ABOVE_8 (size_t) ;
 size_t MASK_OUT_BELOW_8 (size_t) ;
 int NFLAG_8 (size_t) ;
 int REG_IR ;
 int USE_CYCLES (size_t) ;
 int VFLAG_CLEAR ;
 size_t* m68ki_shift_8_table ;

__attribute__((used)) static void m68k_op_asr_8_s(void)
{
  uint* r_dst = &DY;
  uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
  uint src = MASK_OUT_ABOVE_8(*r_dst);
  uint res = src >> shift;

  if(shift != 0)
    USE_CYCLES(shift * CYC_SHIFT);

  if(GET_MSB_8(src))
    res |= m68ki_shift_8_table[shift];

  *r_dst = MASK_OUT_BELOW_8(*r_dst) | res;

  FLAG_N = NFLAG_8(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  FLAG_X = FLAG_C = src << (9-shift);
}
