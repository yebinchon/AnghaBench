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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ AF80_enabled ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int GTIA_consol_override ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
	FUNC7();
	FUNC8();
	FUNC2();
	/* CPU_Reset() must be after PIA_Reset(),
	   because Reset routine vector must be read from OS ROM */
	FUNC4();
	/* note: POKEY and GTIA have no Reset pin */
#ifdef __PLUS
	HandleResetEvent();
#endif
	/* reset cartridge to power-up state */
	FUNC3();
	/* set Atari OS Coldstart flag */
	FUNC6(0x244, 1);
	/* handle Option key (disable BASIC in XL/XE)
	   and Start key (boot from cassette) */
	GTIA_consol_override = 2;
#ifdef AF80
	if (AF80_enabled) {
		AF80_Reset();
		AF80_InsertRightCartridge();
	}
#endif
}