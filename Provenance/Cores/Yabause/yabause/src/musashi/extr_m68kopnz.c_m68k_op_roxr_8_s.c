
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
 int MASK_OUT_ABOVE_8 (int) ;
 int MASK_OUT_BELOW_8 (int) ;
 int NFLAG_8 (int) ;
 int REG_IR ;
 int ROR_9 (int,int) ;
 int VFLAG_CLEAR ;
 int XFLAG_AS_1 () ;

void m68k_op_roxr_8_s(void)
{
 uint* r_dst = &DY;
 uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
 uint src = MASK_OUT_ABOVE_8(*r_dst);
 uint res = ROR_9(src | (XFLAG_AS_1() << 8), shift);

 FLAG_C = FLAG_X = res;
 res = MASK_OUT_ABOVE_8(res);

 *r_dst = MASK_OUT_BELOW_8(*r_dst) | res;

 FLAG_N = NFLAG_8(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;
}
