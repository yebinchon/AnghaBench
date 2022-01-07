
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_A7_PD_8 () ;
 int FLAG_Z ;
 int OPER_I_8 () ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int) ;

__attribute__((used)) static void m68k_op_bclr_8_s_pd7(void)
{
  uint mask = 1 << (OPER_I_8() & 7);
  uint ea = EA_A7_PD_8();
  uint src = m68ki_read_8(ea);

  FLAG_Z = src & mask;
  m68ki_write_8(ea, src & ~mask);
}
