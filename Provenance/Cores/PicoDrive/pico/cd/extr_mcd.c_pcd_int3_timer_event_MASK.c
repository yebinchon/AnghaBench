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
struct TYPE_2__ {int* s68k_regs; } ;

/* Variables and functions */
 int EL_CD ; 
 int EL_INTS ; 
 int PCDS_IEN3 ; 
 int /*<<< orphan*/  PCD_EVENT_TIMER3 ; 
 TYPE_1__* Pico_mcd ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(unsigned int now)
{
  if (Pico_mcd->s68k_regs[0x33] & PCDS_IEN3) {
    FUNC1(EL_INTS|EL_CD, "s68k: timer irq 3");
    FUNC0(3);
  }

  if (Pico_mcd->s68k_regs[0x31] != 0)
    FUNC2(now, PCD_EVENT_TIMER3,
      Pico_mcd->s68k_regs[0x31] * 384);
}