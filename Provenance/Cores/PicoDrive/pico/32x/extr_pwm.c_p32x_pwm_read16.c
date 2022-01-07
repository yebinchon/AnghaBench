
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* regs; int* pwm_p; } ;
typedef int SH2 ;


 int EL_PWM ;
 unsigned int P32XP_EMPTY ;
 unsigned int P32XP_FULL ;
 TYPE_1__ Pico32x ;
 int consume_fifo (int *,unsigned int) ;
 int elprintf (int ,char*,unsigned int,unsigned int,unsigned int,int,int) ;

unsigned int p32x_pwm_read16(unsigned int a, SH2 *sh2,
  unsigned int m68k_cycles)
{
  unsigned int d = 0;

  consume_fifo(sh2, m68k_cycles);

  a &= 0x0e;
  switch (a) {
    case 0:
    case 2:
      d = Pico32x.regs[(0x30 + a) / 2];
      break;

    case 4:
      if (Pico32x.pwm_p[0] == 3)
        d |= P32XP_FULL;
      else if (Pico32x.pwm_p[0] == 0)
        d |= P32XP_EMPTY;
      break;

    case 6:
    case 8:
      if (Pico32x.pwm_p[1] == 3)
        d |= P32XP_FULL;
      else if (Pico32x.pwm_p[1] == 0)
        d |= P32XP_EMPTY;
      break;
  }

  elprintf(EL_PWM, "pwm: %u: r16 %02x %04x (p %d %d)",
    m68k_cycles, a, d, Pico32x.pwm_p[0], Pico32x.pwm_p[1]);
  return d;
}
