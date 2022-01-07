
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DX ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 scalar_t__ HIGH_NIBBLE (int) ;
 int LOW_NIBBLE (int) ;
 int MASK_OUT_ABOVE_8 (int) ;
 int MASK_OUT_BELOW_8 (int) ;
 int NFLAG_8 (int) ;
 int XFLAG_AS_1 () ;

void m68k_op_sbcd_8_rr(void)
{
 uint* r_dst = &DX;
 uint src = DY;
 uint dst = *r_dst;
 uint res = LOW_NIBBLE(dst) - LOW_NIBBLE(src) - XFLAG_AS_1();

 FLAG_V = ~res;

 if(res > 9)
  res -= 6;
 res += HIGH_NIBBLE(dst) - HIGH_NIBBLE(src);
 FLAG_X = FLAG_C = (res > 0x99) << 8;
 if(FLAG_C)
  res += 0xa0;

 res = MASK_OUT_ABOVE_8(res);

 FLAG_V &= res;
 FLAG_N = NFLAG_8(res);
 FLAG_Z |= res;

 *r_dst = MASK_OUT_BELOW_8(*r_dst) | res;
}
