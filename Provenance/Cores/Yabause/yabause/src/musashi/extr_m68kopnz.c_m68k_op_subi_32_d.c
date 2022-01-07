
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 scalar_t__ FLAG_Z ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 int NFLAG_32 (scalar_t__) ;
 scalar_t__ OPER_I_32 () ;
 int VFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;

void m68k_op_subi_32_d(void)
{
 uint* r_dst = &DY;
 uint src = OPER_I_32();
 uint dst = *r_dst;
 uint res = dst - src;

 FLAG_N = NFLAG_32(res);
 FLAG_Z = MASK_OUT_ABOVE_32(res);
 FLAG_X = FLAG_C = CFLAG_SUB_32(src, dst, res);
 FLAG_V = VFLAG_SUB_32(src, dst, res);

 *r_dst = FLAG_Z;
}
