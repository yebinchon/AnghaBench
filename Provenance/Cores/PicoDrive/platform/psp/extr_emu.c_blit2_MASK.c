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
struct TYPE_2__ {int EmuOpt; } ;

/* Variables and functions */
 int OSD_FPS_X ; 
 int PAHW_MCD ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ currentConfig ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(const char *fps, const char *notice, int lagging_behind)
{
	int vsync = 0, emu_opt = currentConfig.EmuOpt;

	if (notice || (emu_opt & 2)) {
		if (notice)      FUNC1(4, notice, 0, 0);
		if (emu_opt & 2) FUNC1(OSD_FPS_X, fps, 0, 0);
	}

	//dbg_text();

	if ((emu_opt & 0x400) && (PicoAHW & PAHW_MCD))
		FUNC0();

	if (currentConfig.EmuOpt & 0x2000) { // want vsync
		if (!(currentConfig.EmuOpt & 0x10000) || !lagging_behind) vsync = 1;
	}

	FUNC2(vsync);
}