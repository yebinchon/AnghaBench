
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int DX ;
 scalar_t__ EA_AY_DI_32 () ;
 int m68ki_read_8 (scalar_t__) ;

void m68k_op_movep_32_er(void)
{
 uint ea = EA_AY_DI_32();

 DX = (m68ki_read_8(ea) << 24) + (m68ki_read_8(ea + 2) << 16)
  + (m68ki_read_8(ea + 4) << 8) + m68ki_read_8(ea + 6);
}
