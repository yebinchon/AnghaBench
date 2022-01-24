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
struct TYPE_2__ {int volume; } ;

/* Variables and functions */
 unsigned int CONFIGURABLE_KEYS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int PBTN_HOME ; 
 int /*<<< orphan*/  PGS_Menu ; 
 unsigned int* PicoPad ; 
 int /*<<< orphan*/ * PsndOut ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 TYPE_1__ currentConfig ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  engineState ; 
 scalar_t__ movie_data ; 
 int /*<<< orphan*/  noticeMsg ; 
 int /*<<< orphan*/  noticeMsgTime ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC7(void)
{
	unsigned int keys, allActions[2] = { 0, 0 }, events;
	static unsigned int prevEvents = 0;
	int i;

	/* FIXME: port to input fw, merge with emu.c:emu_update_input() */
	keys = FUNC1();
	if (keys & PBTN_HOME)
		engineState = PGS_Menu;

	keys &= CONFIGURABLE_KEYS;

	PicoPad[0] = allActions[0] & 0xfff;
	PicoPad[1] = allActions[1] & 0xfff;

	if (allActions[0] & 0x7000) FUNC4(&PicoPad[0], allActions[0]);
	if (allActions[1] & 0x7000) FUNC4(&PicoPad[1], allActions[1]);

	events = (allActions[0] | allActions[1]) >> 16;

	// volume is treated in special way and triggered every frame
	if ((events & 0x6000) && PsndOut != NULL)
	{
		int vol = currentConfig.volume;
		if (events & 0x2000) {
			if (vol < 100) vol++;
		} else {
			if (vol >   0) vol--;
		}
		FUNC0(vol, vol);
		FUNC6(noticeMsg, "VOL: %02i ", vol);
		noticeMsgTime = FUNC2();
		currentConfig.volume = vol;
	}

	events &= ~prevEvents;
	if (events) FUNC3(events);
	if (movie_data) FUNC5();

	prevEvents = (allActions[0] | allActions[1]) >> 16;
}