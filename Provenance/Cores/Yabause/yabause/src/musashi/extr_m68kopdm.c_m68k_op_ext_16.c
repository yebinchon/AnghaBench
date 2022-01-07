
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
 scalar_t__ GET_MSB_8 (int) ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_ABOVE_8 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int NFLAG_16 (int) ;
 int VFLAG_CLEAR ;

void m68k_op_ext_16(void)
{
 uint* r_dst = &DY;

 *r_dst = MASK_OUT_BELOW_16(*r_dst) | MASK_OUT_ABOVE_8(*r_dst) | (GET_MSB_8(*r_dst) ? 0xff00 : 0);

 FLAG_N = NFLAG_16(*r_dst);
 FLAG_Z = MASK_OUT_ABOVE_16(*r_dst);
 FLAG_V = VFLAG_CLEAR;
 FLAG_C = CFLAG_CLEAR;
}
