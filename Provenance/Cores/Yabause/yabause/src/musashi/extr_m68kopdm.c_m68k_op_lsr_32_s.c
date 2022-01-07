
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
 int NFLAG_CLEAR ;
 int REG_IR ;
 int VFLAG_CLEAR ;

void m68k_op_lsr_32_s(void)
{
 uint* r_dst = &DY;
 uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
 uint src = *r_dst;
 uint res = src >> shift;

 *r_dst = res;

 FLAG_N = NFLAG_CLEAR;
 FLAG_Z = res;
 FLAG_X = FLAG_C = src << (9-shift);
 FLAG_V = VFLAG_CLEAR;
}
