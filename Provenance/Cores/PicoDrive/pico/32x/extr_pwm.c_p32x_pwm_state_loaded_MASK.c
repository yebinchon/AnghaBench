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
struct TYPE_2__ {int pwm_cycle_p; int /*<<< orphan*/  pwm_irq_cnt; } ;

/* Variables and functions */
 TYPE_1__ Pico32x ; 
 int SekCycleCnt ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int pwm_cycles ; 
 int /*<<< orphan*/  pwm_irq_reload ; 

void FUNC2(void)
{
  int cycles_diff_sh2;

  FUNC0();

  // for old savestates
  cycles_diff_sh2 = SekCycleCnt * 3 - Pico32x.pwm_cycle_p;
  if (cycles_diff_sh2 >= pwm_cycles || cycles_diff_sh2 < 0) {
    Pico32x.pwm_irq_cnt = pwm_irq_reload;
    Pico32x.pwm_cycle_p = SekCycleCnt * 3;
    FUNC1(SekCycleCnt);
  }
}