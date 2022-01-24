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
 scalar_t__ FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ last_z80_sync ; 
 int z80_cycle_aim ; 

__attribute__((used)) static int FUNC2(void)
{
  return z80_cycle_aim
    + FUNC1(FUNC0() - last_z80_sync);
}