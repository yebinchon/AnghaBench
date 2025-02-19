
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_ADD_32 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ DX ;
 scalar_t__ DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 scalar_t__ FLAG_Z ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 int NFLAG_32 (scalar_t__) ;
 int VFLAG_ADD_32 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ XFLAG_AS_1 () ;

void m68k_op_addx_32_rr(void)
{
 uint* r_dst = &DX;
 uint src = DY;
 uint dst = *r_dst;
 uint res = src + dst + XFLAG_AS_1();

 FLAG_N = NFLAG_32(res);
 FLAG_V = VFLAG_ADD_32(src, dst, res);
 FLAG_X = FLAG_C = CFLAG_ADD_32(src, dst, res);

 res = MASK_OUT_ABOVE_32(res);
 FLAG_Z |= res;

 *r_dst = res;
}
