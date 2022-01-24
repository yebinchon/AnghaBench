#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int loaded; int adjust; int /*<<< orphan*/  filename; } ;
struct TYPE_3__ {int /*<<< orphan*/  color_delay; int /*<<< orphan*/  hue; int /*<<< orphan*/  gamma; int /*<<< orphan*/  brightness; int /*<<< orphan*/  contrast; int /*<<< orphan*/  saturation; } ;

/* Variables and functions */
 TYPE_2__ COLOURS_PAL_external ; 
 TYPE_1__ COLOURS_PAL_setup ; 
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

int FUNC4(char *option, char *ptr)
{
	if (FUNC3(option, "COLOURS_PAL_SATURATION") == 0)
		return FUNC1(ptr, &COLOURS_PAL_setup.saturation);
	else if (FUNC3(option, "COLOURS_PAL_CONTRAST") == 0)
		return FUNC1(ptr, &COLOURS_PAL_setup.contrast);
	else if (FUNC3(option, "COLOURS_PAL_BRIGHTNESS") == 0)
		return FUNC1(ptr, &COLOURS_PAL_setup.brightness);
	else if (FUNC3(option, "COLOURS_PAL_GAMMA") == 0)
		return FUNC1(ptr, &COLOURS_PAL_setup.gamma);
	else if (FUNC3(option, "COLOURS_PAL_HUE") == 0)
		return FUNC1(ptr, &COLOURS_PAL_setup.hue);
	else if (FUNC3(option, "COLOURS_PAL_GTIA_DELAY") == 0)
		return FUNC1(ptr, &COLOURS_PAL_setup.color_delay);
	else if (FUNC3(option, "COLOURS_PAL_EXTERNAL_PALETTE") == 0)
		FUNC2(COLOURS_PAL_external.filename, ptr, sizeof(COLOURS_PAL_external.filename));
	else if (FUNC3(option, "COLOURS_PAL_EXTERNAL_PALETTE_LOADED") == 0)
		/* Use the "loaded" flag to indicate that the palette must be loaded later. */
		return (COLOURS_PAL_external.loaded = FUNC0(ptr)) != -1;
	else if (FUNC3(option, "COLOURS_PAL_ADJUST_EXTERNAL_PALETTE") == 0)
		return (COLOURS_PAL_external.adjust = FUNC0(ptr)) != -1;
	else
		return FALSE;
	return TRUE;
}