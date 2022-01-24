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
 int /*<<< orphan*/  FUNC1 (int*,char**) ; 
 scalar_t__ Atari800_display_screen ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INPUT_CONSOL_NONE ; 
 int /*<<< orphan*/  INPUT_key_code ; 
 scalar_t__ INPUT_key_consol ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ keyboard_consol ; 
 scalar_t__ menu_consol ; 

int FUNC5(int argc, char **argv)
{
	/* initialise Atari800 core */
	if (!FUNC1(&argc, argv))
		return 3;

	/* main loop */
	for (;;) {
		INPUT_key_code = FUNC4();

		if (menu_consol != INPUT_CONSOL_NONE) {
			INPUT_key_consol = menu_consol;
			menu_consol = INPUT_CONSOL_NONE;
		}
		else
			INPUT_key_consol = keyboard_consol;

		FUNC2();

		FUNC0();
		if (Atari800_display_screen)
			FUNC3();
	}
}