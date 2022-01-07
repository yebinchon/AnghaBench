
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int EA_A7_PD_8 () ;
 int OPER_I_16 () ;
 int m68ki_exception_illegal () ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int) ;

void m68k_op_pack_16_mm_axy7(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint ea_src = EA_A7_PD_8();
  uint src = m68ki_read_8(ea_src);
  ea_src = EA_A7_PD_8();
  src = ((src << 8) | m68ki_read_8(ea_src)) + OPER_I_16();

  m68ki_write_8(EA_A7_PD_8(), ((src >> 4) & 0x00f0) | (src & 0x000f));
  return;
 }
 m68ki_exception_illegal();
}
