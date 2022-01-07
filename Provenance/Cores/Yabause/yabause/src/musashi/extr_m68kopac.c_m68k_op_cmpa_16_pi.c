
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AX ;
 int CFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 scalar_t__ MAKE_INT_16 (int ) ;
 int MASK_OUT_ABOVE_32 (scalar_t__) ;
 int NFLAG_32 (scalar_t__) ;
 int OPER_AY_PI_16 () ;
 int VFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;

void m68k_op_cmpa_16_pi(void)
{
 uint src = MAKE_INT_16(OPER_AY_PI_16());
 uint dst = AX;
 uint res = dst - src;

 FLAG_N = NFLAG_32(res);
 FLAG_Z = MASK_OUT_ABOVE_32(res);
 FLAG_V = VFLAG_SUB_32(src, dst, res);
 FLAG_C = CFLAG_SUB_32(src, dst, res);
}
