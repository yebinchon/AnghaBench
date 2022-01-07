
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p32x_pwm_schedule (unsigned int) ;

void p32x_pwm_irq_event(unsigned int m68k_now)
{
  p32x_pwm_schedule(m68k_now);
}
