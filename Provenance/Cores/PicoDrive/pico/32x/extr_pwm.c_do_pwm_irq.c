
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* regs; } ;
typedef int SH2 ;


 int P32XI_PWM ;
 int P32XP_RTP ;
 int P32X_EVENT_PWM ;
 TYPE_1__ Pico32x ;
 int p32x_dreq1_trigger () ;
 int p32x_event_schedule (unsigned int,int ,int) ;
 int p32x_trigger_irq (int *,unsigned int,int ) ;
 int pwm_cycles ;

__attribute__((used)) static void do_pwm_irq(SH2 *sh2, unsigned int m68k_cycles)
{
  p32x_trigger_irq(sh2, m68k_cycles, P32XI_PWM);

  if (Pico32x.regs[0x30 / 2] & P32XP_RTP) {
    p32x_event_schedule(m68k_cycles, P32X_EVENT_PWM, pwm_cycles / 3 + 1);

    p32x_dreq1_trigger();
  }
}
