
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_LT () ;
 int EA_A7_PI_8 () ;
 int m68ki_write_8 (int ,int) ;

void m68k_op_slt_8_pi7(void)
{
 m68ki_write_8(EA_A7_PI_8(), COND_LT() ? 0xff : 0);
}
