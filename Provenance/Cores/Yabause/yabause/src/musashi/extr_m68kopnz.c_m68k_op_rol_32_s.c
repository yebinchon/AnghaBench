
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint ;


 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_32 (int) ;
 int REG_IR ;
 int ROL_32 (int,int) ;
 int VFLAG_CLEAR ;

void m68k_op_rol_32_s(void)
{
 uint* r_dst = &DY;
 uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
 uint64 src = *r_dst;
 uint res = ROL_32(src, shift);

 *r_dst = res;

 FLAG_N = NFLAG_32(res);
 FLAG_Z = res;
 FLAG_C = src >> (24-shift);
 FLAG_V = VFLAG_CLEAR;
}
