#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int) ; 
 int SekCycleAim ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(int m68k_cycles)
{
  unsigned int target = SekCycleAim + m68k_cycles;
  do {
    SekCycleAim += 8;
    FUNC1();
    FUNC2(SekCycleAim, 0);
  } while (FUNC0(target, SekCycleAim));

  SekCycleAim = target;
}