#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int TA; int TB; int mode; } ;
struct TYPE_5__ {TYPE_1__ ST; } ;
struct TYPE_6__ {int* REGS; TYPE_2__ OPN; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_STATUS ; 
 int /*<<< orphan*/  EL_YMTIMER ; 
 int POPT_EXT_FM ; 
 int PicoOpt ; 
 int TIMER_NO_OFLOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int*,int*) ; 
 int FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int timer_a_next_oflow ; 
 double timer_a_step ; 
 int timer_b_next_oflow ; 
 double timer_b_step ; 
 TYPE_3__ ym2612 ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
  int i, ret, tac, tat, tbc, tbt;
  FUNC0();

  // feed all the registers and update internal state
  for (i = 0x20; i < 0xA0; i++) {
    FUNC4(0, i, 0);
    FUNC4(1, ym2612.REGS[i], 0);
  }
  for (i = 0x30; i < 0xA0; i++) {
    FUNC4(2, i, 0);
    FUNC4(3, ym2612.REGS[i|0x100], 0);
  }
  for (i = 0xAF; i >= 0xA0; i--) { // must apply backwards
    FUNC4(2, i, 0);
    FUNC4(3, ym2612.REGS[i|0x100], 0);
    FUNC4(0, i, 0);
    FUNC4(1, ym2612.REGS[i], 0);
  }
  for (i = 0xB0; i < 0xB8; i++) {
    FUNC4(0, i, 0);
    FUNC4(1, ym2612.REGS[i], 0);
    FUNC4(2, i, 0);
    FUNC4(3, ym2612.REGS[i|0x100], 0);
  }

#ifdef __GP2X__
  if (PicoOpt & POPT_EXT_FM)
    ret = YM2612PicoStateLoad2_940(&tat, &tbt);
  else
#endif
    ret = FUNC1(&tat, &tbt);
  if (ret != 0) {
    FUNC3(EL_STATUS, "old ym2612 state");
    return; // no saved timers
  }

  tac = (1024 - ym2612.OPN.ST.TA) << 16;
  tbc = (256  - ym2612.OPN.ST.TB) << 16;
  if (ym2612.OPN.ST.mode & 1)
    timer_a_next_oflow = (int)((double)(tac - tat) / (double)tac * timer_a_step);
  else
    timer_a_next_oflow = TIMER_NO_OFLOW;
  if (ym2612.OPN.ST.mode & 2)
    timer_b_next_oflow = (int)((double)(tbc - tbt) / (double)tbc * timer_b_step);
  else
    timer_b_next_oflow = TIMER_NO_OFLOW;
  FUNC3(EL_YMTIMER, "load: %i/%i, timer_a_next_oflow %i", tat>>16, tac>>16, timer_a_next_oflow >> 8);
  FUNC3(EL_YMTIMER, "load: %i/%i, timer_b_next_oflow %i", tbt>>16, tbc>>16, timer_b_next_oflow >> 8);
}