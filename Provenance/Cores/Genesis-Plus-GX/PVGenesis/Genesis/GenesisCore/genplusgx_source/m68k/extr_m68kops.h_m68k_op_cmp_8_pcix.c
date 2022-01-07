
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint ;


 int CFLAG_8 (void*) ;
 void* DX ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 void* FLAG_Z ;
 void* MASK_OUT_ABOVE_8 (void*) ;
 int NFLAG_8 (void*) ;
 void* OPER_PCIX_8 () ;
 int VFLAG_SUB_8 (void*,void*,void*) ;

__attribute__((used)) static void m68k_op_cmp_8_pcix(void)
{
  uint src = OPER_PCIX_8();
  uint dst = MASK_OUT_ABOVE_8(DX);
  uint res = dst - src;

  FLAG_N = NFLAG_8(res);
  FLAG_Z = MASK_OUT_ABOVE_8(res);
  FLAG_V = VFLAG_SUB_8(src, dst, res);
  FLAG_C = CFLAG_8(res);
}
