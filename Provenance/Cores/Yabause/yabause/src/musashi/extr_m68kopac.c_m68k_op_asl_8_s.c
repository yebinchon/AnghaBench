
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
 int* m68ki_shift_8_table ;

void m68k_op_asl_8_s(void)
{
 uint* r_dst = &DY;
 uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
 uint src = MASK_OUT_ABOVE_8(*r_dst);
 uint res = MASK_OUT_ABOVE_8(src << shift);

 *r_dst = MASK_OUT_BELOW_8(*r_dst) | res;

 FLAG_X = FLAG_C = src << shift;
 FLAG_N = NFLAG_8(res);
 FLAG_Z = res;
 src &= m68ki_shift_8_table[shift + 1];
 FLAG_V = (!(src == 0 || (src == m68ki_shift_8_table[shift + 1] && shift < 8)))<<7;
}
