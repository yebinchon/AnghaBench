
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DX ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int NFLAG_32 (int) ;
 int OPER_PCIX_16 () ;
 int UseMuluCycles (int) ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_mulu_16_pcix(void)
{
  uint* r_dst = &DX;
  uint src = OPER_PCIX_16();
  uint res = src * MASK_OUT_ABOVE_16(*r_dst);

  UseMuluCycles(src);

  *r_dst = res;

  FLAG_Z = res;
  FLAG_N = NFLAG_32(res);
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;
}
