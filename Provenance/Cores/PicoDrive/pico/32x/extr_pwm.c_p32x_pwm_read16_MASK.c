#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int* regs; int* pwm_p; } ;
typedef  int /*<<< orphan*/  SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_PWM ; 
 unsigned int P32XP_EMPTY ; 
 unsigned int P32XP_FULL ; 
 TYPE_1__ Pico32x ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,int,int) ; 

unsigned int FUNC2(unsigned int a, SH2 *sh2,
  unsigned int m68k_cycles)
{
  unsigned int d = 0;

  FUNC0(sh2, m68k_cycles);

  a &= 0x0e;
  switch (a) {
    case 0: // control
    case 2: // cycle
      d = Pico32x.regs[(0x30 + a) / 2];
      break;

    case 4: // L ch
      if (Pico32x.pwm_p[0] == 3)
        d |= P32XP_FULL;
      else if (Pico32x.pwm_p[0] == 0)
        d |= P32XP_EMPTY;
      break;

    case 6: // R ch
    case 8: // MONO
      if (Pico32x.pwm_p[1] == 3)
        d |= P32XP_FULL;
      else if (Pico32x.pwm_p[1] == 0)
        d |= P32XP_EMPTY;
      break;
  }

  FUNC1(EL_PWM, "pwm: %u: r16 %02x %04x (p %d %d)",
    m68k_cycles, a, d, Pico32x.pwm_p[0], Pico32x.pwm_p[1]);
  return d;
}