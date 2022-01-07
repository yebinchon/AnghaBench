
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ DX ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (scalar_t__) ;
 int NFLAG_32 (scalar_t__) ;
 scalar_t__ OPER_AY_AI_32 () ;
 int VFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;

void m68k_op_cmp_32_ai(void)
{
 uint src = OPER_AY_AI_32();
 uint dst = DX;
 uint res = dst - src;

 FLAG_N = NFLAG_32(res);
 FLAG_Z = MASK_OUT_ABOVE_32(res);
 FLAG_V = VFLAG_SUB_32(src, dst, res);
 FLAG_C = CFLAG_SUB_32(src, dst, res);
}
