
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_GT () ;
 int EA_AY_DI_8 () ;
 int m68ki_write_8 (int ,int) ;

__attribute__((used)) static void m68k_op_sgt_8_di(void)
{
  m68ki_write_8(EA_AY_DI_8(), COND_GT() ? 0xff : 0);
}
