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
 int /*<<< orphan*/  READPNG_BG ; 
 scalar_t__ bg_buffer ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * giz_screen ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int use_game_bg)
{
	if (use_game_bg)
	{
		// darken the active framebuffer
		if (giz_screen == NULL)
			giz_screen = FUNC0(1);
		FUNC3(bg_buffer, 0, 321*8*2);
		FUNC4(bg_buffer + 321*8*2, (char *)giz_screen + 321*8*2, 321*224, 1);
		FUNC3(bg_buffer + 321*232*2, 0, 321*8*2);
		FUNC1();
		giz_screen = NULL;
	}
	else
	{
		int i;
		// should really only happen once, on startup..
		FUNC5(bg_buffer, "skin/background.png", READPNG_BG);
		// adjust 320 width to 321
		for (i = 239; i > 0; i--)
			FUNC2(bg_buffer + 321*2*i, bg_buffer + 320*2*i, 320*2);
	}
}