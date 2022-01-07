
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int VFLAG_CLEAR ;

void m68k_op_swap_32(void)
{
 uint* r_dst = &DY;

 FLAG_Z = MASK_OUT_ABOVE_32(*r_dst<<16);
 *r_dst = (*r_dst>>16) | FLAG_Z;

 FLAG_Z = *r_dst;
 FLAG_N = NFLAG_32(*r_dst);
 FLAG_C = CFLAG_CLEAR;
 FLAG_V = VFLAG_CLEAR;
}
