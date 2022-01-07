
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
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int NFLAG_16 (int) ;
 int VFLAG_CLEAR ;

void m68k_op_not_16_d(void)
{
 uint* r_dst = &DY;
 uint res = MASK_OUT_ABOVE_16(~*r_dst);

 *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;

 FLAG_N = NFLAG_16(res);
 FLAG_Z = res;
 FLAG_C = CFLAG_CLEAR;
 FLAG_V = VFLAG_CLEAR;
}
