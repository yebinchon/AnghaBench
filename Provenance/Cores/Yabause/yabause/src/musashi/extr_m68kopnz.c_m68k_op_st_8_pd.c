
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EA_AY_PD_8 () ;
 int m68ki_write_8 (int ,int) ;

void m68k_op_st_8_pd(void)
{
 m68ki_write_8(EA_AY_PD_8(), 0xff);
}
