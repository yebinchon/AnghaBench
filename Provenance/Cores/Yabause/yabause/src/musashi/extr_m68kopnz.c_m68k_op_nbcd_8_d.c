
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int CFLAG_SET ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (int) ;
 int MASK_OUT_BELOW_8 (int) ;
 int NFLAG_8 (int) ;
 int VFLAG_CLEAR ;
 int XFLAG_AS_1 () ;
 int XFLAG_CLEAR ;
 int XFLAG_SET ;

void m68k_op_nbcd_8_d(void)
{
 uint* r_dst = &DY;
 uint dst = *r_dst;
 uint res = MASK_OUT_ABOVE_8(0x9a - dst - XFLAG_AS_1());

 if(res != 0x9a)
 {
  FLAG_V = ~res;

  if((res & 0x0f) == 0xa)
   res = (res & 0xf0) + 0x10;

  res = MASK_OUT_ABOVE_8(res);

  FLAG_V &= res;

  *r_dst = MASK_OUT_BELOW_8(*r_dst) | res;

  FLAG_Z |= res;
  FLAG_C = CFLAG_SET;
  FLAG_X = XFLAG_SET;
 }
 else
 {
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;
  FLAG_X = XFLAG_CLEAR;
 }
 FLAG_N = NFLAG_8(res);
}
