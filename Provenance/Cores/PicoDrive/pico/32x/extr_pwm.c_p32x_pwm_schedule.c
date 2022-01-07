
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P32X_EVENT_PWM ;
 int p32x_event_schedule (unsigned int,int ,int) ;
 int p32x_pwm_schedule_ (int *,unsigned int) ;

void p32x_pwm_schedule(unsigned int m68k_now)
{
  int after = p32x_pwm_schedule_(((void*)0), m68k_now);
  if (after != 0)
    p32x_event_schedule(m68k_now, P32X_EVENT_PWM, after);
}
