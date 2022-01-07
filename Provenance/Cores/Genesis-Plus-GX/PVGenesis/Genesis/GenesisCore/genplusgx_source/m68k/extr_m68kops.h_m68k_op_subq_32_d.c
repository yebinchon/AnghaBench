
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_SUB_32 (int,int,int) ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int REG_IR ;
 int VFLAG_SUB_32 (int,int,int) ;

__attribute__((used)) static void m68k_op_subq_32_d(void)
{
  uint* r_dst = &DY;
  uint src = (((REG_IR >> 9) - 1) & 7) + 1;
  uint dst = *r_dst;
  uint res = dst - src;

  FLAG_N = NFLAG_32(res);
  FLAG_Z = MASK_OUT_ABOVE_32(res);
  FLAG_X = FLAG_C = CFLAG_SUB_32(src, dst, res);
  FLAG_V = VFLAG_SUB_32(src, dst, res);

  *r_dst = FLAG_Z;
}
