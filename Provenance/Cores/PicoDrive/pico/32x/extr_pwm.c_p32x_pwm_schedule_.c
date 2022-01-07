
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int pwm_cycle_p; int* sh2irq_mask; int pwm_irq_cnt; } ;
typedef int SH2 ;


 TYPE_1__ Pico32x ;
 int consume_fifo_do (int *,unsigned int,int) ;
 int pwm_cycles ;

__attribute__((used)) static int p32x_pwm_schedule_(SH2 *sh2, unsigned int m68k_now)
{
  unsigned int sh2_now = m68k_now * 3;
  int cycles_diff_sh2;

  if (pwm_cycles == 0)
    return 0;

  cycles_diff_sh2 = sh2_now - Pico32x.pwm_cycle_p;
  if (cycles_diff_sh2 >= pwm_cycles)
    consume_fifo_do(sh2, m68k_now, cycles_diff_sh2);

  if (!((Pico32x.sh2irq_mask[0] | Pico32x.sh2irq_mask[1]) & 1))
    return 0;

  cycles_diff_sh2 = sh2_now - Pico32x.pwm_cycle_p;
  return (Pico32x.pwm_irq_cnt * pwm_cycles
           - cycles_diff_sh2) / 3 + 1;
}
