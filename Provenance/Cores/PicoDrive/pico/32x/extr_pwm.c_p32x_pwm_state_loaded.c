
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pwm_cycle_p; int pwm_irq_cnt; } ;


 TYPE_1__ Pico32x ;
 int SekCycleCnt ;
 int p32x_pwm_ctl_changed () ;
 int p32x_pwm_schedule (int) ;
 int pwm_cycles ;
 int pwm_irq_reload ;

void p32x_pwm_state_loaded(void)
{
  int cycles_diff_sh2;

  p32x_pwm_ctl_changed();


  cycles_diff_sh2 = SekCycleCnt * 3 - Pico32x.pwm_cycle_p;
  if (cycles_diff_sh2 >= pwm_cycles || cycles_diff_sh2 < 0) {
    Pico32x.pwm_irq_cnt = pwm_irq_reload;
    Pico32x.pwm_cycle_p = SekCycleCnt * 3;
    p32x_pwm_schedule(SekCycleCnt);
  }
}
