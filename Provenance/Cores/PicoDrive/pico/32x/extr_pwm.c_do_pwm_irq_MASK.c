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
struct TYPE_2__ {int* regs; } ;
typedef  int /*<<< orphan*/  SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  P32XI_PWM ; 
 int P32XP_RTP ; 
 int /*<<< orphan*/  P32X_EVENT_PWM ; 
 TYPE_1__ Pico32x ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int pwm_cycles ; 

__attribute__((used)) static void FUNC3(SH2 *sh2, unsigned int m68k_cycles)
{
  FUNC2(sh2, m68k_cycles, P32XI_PWM);

  if (Pico32x.regs[0x30 / 2] & P32XP_RTP) {
    FUNC1(m68k_cycles, P32X_EVENT_PWM, pwm_cycles / 3 + 1);
    // note: might recurse
    FUNC0();
  }
}