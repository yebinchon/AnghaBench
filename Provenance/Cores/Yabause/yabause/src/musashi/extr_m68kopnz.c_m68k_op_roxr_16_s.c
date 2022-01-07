
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int NFLAG_16 (int) ;
 int REG_IR ;
 int ROR_17 (int,int) ;
 int VFLAG_CLEAR ;
 int XFLAG_AS_1 () ;

void m68k_op_roxr_16_s(void)
{
 uint* r_dst = &DY;
 uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
 uint src = MASK_OUT_ABOVE_16(*r_dst);
 uint res = ROR_17(src | (XFLAG_AS_1() << 16), shift);

 FLAG_C = FLAG_X = res >> 8;
 res = MASK_OUT_ABOVE_16(res);

 *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;

 FLAG_N = NFLAG_16(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;
}
