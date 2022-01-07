
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_AY_IX_16 () ;
 int m68ki_get_sr () ;
 int m68ki_write_16 (int ,int ) ;

__attribute__((used)) static void m68k_op_move_16_frs_ix(void)
{
  uint ea = EA_AY_IX_16();
  m68ki_write_16(ea, m68ki_get_sr());
}
