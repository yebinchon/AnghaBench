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
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int Screen_HEIGHT ; 
 int Screen_WIDTH ; 
 int /*<<< orphan*/ * Screen_atari_b ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ delta_screen ; 
 int /*<<< orphan*/  init_kb ; 
 int /*<<< orphan*/  load_r ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ mode336x240_videl_settings ; 
 int new_videl_mode_valid ; 
 int /*<<< orphan*/  new_videoram ; 
 int /*<<< orphan*/ * p_str_p ; 
 scalar_t__ reprogram_VIDEL ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	if (reprogram_VIDEL) {
		/* set new video resolution by direct VIDEL programming */
		(void)FUNC2(new_videoram, new_videoram, -1, -1);
		p_str_p = (ULONG *)mode336x240_videl_settings;
		FUNC1(load_r);
		new_videl_mode_valid = 1;
	}

	FUNC4();	/* setup new color palette */

	FUNC1(init_kb);	/* our keyboard routine */

	FUNC0(4, 0x14);	/* joystick init */

#ifdef BITPL_SCR
	if (delta_screen) {
		if (Screen_atari_b != NULL) {
			memset(Screen_atari_b, 0, (Screen_HEIGHT * Screen_WIDTH));
		}
	}
#endif
}