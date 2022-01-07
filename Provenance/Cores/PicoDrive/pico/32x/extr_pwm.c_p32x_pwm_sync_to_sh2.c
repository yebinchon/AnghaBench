
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SH2 ;


 int consume_fifo (int *,int) ;
 int sh2_cycles_done_m68k (int *) ;

void p32x_pwm_sync_to_sh2(SH2 *sh2)
{
  int m68k_cycles = sh2_cycles_done_m68k(sh2);
  consume_fifo(sh2, m68k_cycles);
}
