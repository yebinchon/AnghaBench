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
 int /*<<< orphan*/  EL_BUSREQ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 unsigned int last_z80_sync ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  z80 ; 
 int z80_cycle_aim ; 
 int z80_cycle_cnt ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(unsigned int m68k_cycles_done)
{
  int m68k_cnt;
  int cnt;

  m68k_cnt = m68k_cycles_done - last_z80_sync;
  z80_cycle_aim += FUNC0(m68k_cnt);
  cnt = z80_cycle_aim - z80_cycle_cnt;
  last_z80_sync = m68k_cycles_done;

  FUNC3(z80);

  FUNC1(EL_BUSREQ, "z80 sync %i (%u|%u -> %u|%u)", cnt,
    z80_cycle_cnt, z80_cycle_cnt / 288,
    z80_cycle_aim, z80_cycle_aim / 288);

  if (cnt > 0)
    z80_cycle_cnt += FUNC4(cnt);

  FUNC2(z80);
}