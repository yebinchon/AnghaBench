
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EA_AY_PI_8 () ;
 int m68ki_write_8 (int ,int) ;

__attribute__((used)) static void m68k_op_st_8_pi(void)
{
  m68ki_write_8(EA_AY_PI_8(), 0xff);
}
