
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_8 (int) ;
 int DX ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (int) ;
 int MASK_OUT_BELOW_8 (int) ;
 int NFLAG_8 (int) ;
 int VFLAG_SUB_8 (int,int,int) ;
 int XFLAG_AS_1 () ;

void m68k_op_subx_8_rr(void)
{
 uint* r_dst = &DX;
 uint src = MASK_OUT_ABOVE_8(DY);
 uint dst = MASK_OUT_ABOVE_8(*r_dst);
 uint res = dst - src - XFLAG_AS_1();

 FLAG_N = NFLAG_8(res);
 FLAG_X = FLAG_C = CFLAG_8(res);
 FLAG_V = VFLAG_SUB_8(src, dst, res);

 res = MASK_OUT_ABOVE_8(res);
 FLAG_Z |= res;

 *r_dst = MASK_OUT_BELOW_8(*r_dst) | res;
}
