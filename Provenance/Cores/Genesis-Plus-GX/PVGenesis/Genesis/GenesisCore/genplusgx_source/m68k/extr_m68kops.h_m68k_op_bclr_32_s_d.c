
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DY ;
 int FLAG_Z ;
 int OPER_I_8 () ;

__attribute__((used)) static void m68k_op_bclr_32_s_d(void)
{
  uint* r_dst = &DY;
  uint mask = 1 << (OPER_I_8() & 0x1f);

  FLAG_Z = *r_dst & mask;
  *r_dst &= ~mask;
}
