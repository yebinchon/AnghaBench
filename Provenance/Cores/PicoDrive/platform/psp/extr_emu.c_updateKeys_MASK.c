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
 unsigned int CONFIGURABLE_KEYS ; 
 scalar_t__ PAHW_PICO ; 
 unsigned int PBTN_SELECT ; 
 int /*<<< orphan*/  PGS_Menu ; 
 unsigned int PSP_CTRL_HOME ; 
 scalar_t__ PicoAHW ; 
 unsigned int* PicoPad ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  engineState ; 
 scalar_t__ movie_data ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int reset_timing ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	unsigned int keys, allActions[2] = { 0, 0 }, events;
	static unsigned int prevEvents = 0;
	int i;

	/* FIXME: port to input fw, merge with emu.c:emu_update_input() */
	keys = FUNC5(0);
	if (keys & PSP_CTRL_HOME)
		FUNC6();

	if (keys & PBTN_SELECT)
		engineState = PGS_Menu;

	keys &= CONFIGURABLE_KEYS;

	PicoPad[0] = allActions[0] & 0xfff;
	PicoPad[1] = allActions[1] & 0xfff;

	if (allActions[0] & 0x7000) FUNC2(&PicoPad[0], allActions[0]);
	if (allActions[1] & 0x7000) FUNC2(&PicoPad[1], allActions[1]);

	events = (allActions[0] | allActions[1]) >> 16;

	if ((events ^ prevEvents) & 0x40) {
		FUNC3(events & 0x40);
		reset_timing = 1;
	}

	events &= ~prevEvents;

	if (PicoAHW == PAHW_PICO)
		FUNC1(events, keys);
	if (events) FUNC0(events);
	if (movie_data) FUNC4();

	prevEvents = (allActions[0] | allActions[1]) >> 16;
}