
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SH2 ;


 int P32X_EVENT_PWM ;
 int p32x_event_schedule_sh2 (int *,int ,int) ;
 int p32x_pwm_schedule_ (int *,int ) ;
 int sh2_cycles_done_m68k (int *) ;

void p32x_pwm_schedule_sh2(SH2 *sh2)
{
  int after = p32x_pwm_schedule_(sh2, sh2_cycles_done_m68k(sh2));
  if (after != 0)
    p32x_event_schedule_sh2(sh2, P32X_EVENT_PWM, after);
}
