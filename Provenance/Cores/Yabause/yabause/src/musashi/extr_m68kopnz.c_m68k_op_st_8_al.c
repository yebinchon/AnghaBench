
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EA_AL_8 () ;
 int m68ki_write_8 (int ,int) ;

void m68k_op_st_8_al(void)
{
 m68ki_write_8(EA_AL_8(), 0xff);
}
