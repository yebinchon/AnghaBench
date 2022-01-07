
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P32XI_VRES ;
 int PAHW_32X ;
 int PicoAHW ;
 int SH2_IDLE_STATES ;
 int SekCyclesDone () ;
 int msh2 ;
 int p32x_pwm_ctl_changed () ;
 int p32x_sh2_poll_event (int *,int ,int ) ;
 int p32x_timers_recalc () ;
 int p32x_trigger_irq (int *,int ,int ) ;
 int ssh2 ;

void PicoReset32x(void)
{
  if (PicoAHW & PAHW_32X) {
    p32x_trigger_irq(((void*)0), SekCyclesDone(), P32XI_VRES);
    p32x_sh2_poll_event(&msh2, SH2_IDLE_STATES, 0);
    p32x_sh2_poll_event(&ssh2, SH2_IDLE_STATES, 0);
    p32x_pwm_ctl_changed();
    p32x_timers_recalc();
  }
}
