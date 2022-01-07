
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
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int REG_IR ;
 int* m68ki_shift_32_table ;

void m68k_op_asl_32_s(void)
{
 uint* r_dst = &DY;
 uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
 uint src = *r_dst;
 uint res = MASK_OUT_ABOVE_32(src << shift);

 *r_dst = res;

 FLAG_N = NFLAG_32(res);
 FLAG_Z = res;
 FLAG_X = FLAG_C = src >> (24-shift);
 src &= m68ki_shift_32_table[shift + 1];
 FLAG_V = (!(src == 0 || src == m68ki_shift_32_table[shift + 1]))<<7;
}
