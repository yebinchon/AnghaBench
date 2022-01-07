
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CFLAG_CLEAR ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int NFLAG_16 (int ) ;
 int OPER_I_16 () ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_andi_16_d(void)
{
  FLAG_Z = MASK_OUT_ABOVE_16(DY &= (OPER_I_16() | 0xffff0000));

  FLAG_N = NFLAG_16(FLAG_Z);
  FLAG_C = CFLAG_CLEAR;
  FLAG_V = VFLAG_CLEAR;
}
