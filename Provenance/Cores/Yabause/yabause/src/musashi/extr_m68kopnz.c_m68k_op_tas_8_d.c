
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
 int MASK_OUT_ABOVE_8 (int) ;
 int NFLAG_8 (int) ;
 int VFLAG_CLEAR ;

void m68k_op_tas_8_d(void)
{
 uint* r_dst = &DY;

 FLAG_Z = MASK_OUT_ABOVE_8(*r_dst);
 FLAG_N = NFLAG_8(*r_dst);
 FLAG_V = VFLAG_CLEAR;
 FLAG_C = CFLAG_CLEAR;
 *r_dst |= 0x80;
}
