#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* hue; void* gamma; void* brightness; void* contrast; void* saturation; } ;

/* Variables and functions */
 int /*<<< orphan*/  Atari800_tv_mode ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ COLOURS_NTSC_setup ; 
 int /*<<< orphan*/  FUNC3 (int*,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ COLOURS_PAL_setup ; 
 int /*<<< orphan*/  COLOURS_PRESET_SIZE ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (char*) ; 
 int /*<<< orphan*/  preset_cfg_strings ; 
 TYPE_1__* presets ; 
 scalar_t__ FUNC9 (char*,char*) ; 

int FUNC10(int *argc, char *argv[])
{
	int i;
	int j;

	for (i = j = 1; i < *argc; i++) {
		int i_a = (i + 1 < *argc);		/* is argument available? */
		int a_m = FALSE;			/* error, argument missing! */
		
		if (FUNC9(argv[i], "-saturation") == 0) {
			if (i_a)
				COLOURS_NTSC_setup.saturation = COLOURS_PAL_setup.saturation = FUNC8(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC9(argv[i], "-contrast") == 0) {
			if (i_a)
				COLOURS_NTSC_setup.contrast = COLOURS_PAL_setup.contrast = FUNC8(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC9(argv[i], "-brightness") == 0) {
			if (i_a)
				COLOURS_NTSC_setup.brightness = COLOURS_PAL_setup.brightness = FUNC8(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC9(argv[i], "-gamma") == 0) {
			if (i_a)
				COLOURS_NTSC_setup.gamma = COLOURS_PAL_setup.gamma = FUNC8(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC9(argv[i], "-tint") == 0) {
			if (i_a)
				COLOURS_NTSC_setup.hue = COLOURS_PAL_setup.hue = FUNC8(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC9(argv[i], "-colors-preset") == 0) {
			if (i_a) {
				int idx = FUNC0(argv[++i], preset_cfg_strings, COLOURS_PRESET_SIZE);
				if (idx < 0) {
					FUNC5("Invalid value for -colors-preset");
					return FALSE;
				}
				COLOURS_NTSC_setup = COLOURS_PAL_setup = presets[idx];
				FUNC2();
				FUNC4();
			} else a_m = TRUE;
		}

		else {
			if (FUNC9(argv[i], "-help") == 0) {
				FUNC5("\t-colors-preset standard|deep-black|vibrant");
				FUNC5("\t                       Use one of predefined color adjustments");
				FUNC5("\t-saturation <num>      Set color saturation");
				FUNC5("\t-contrast <num>        Set contrast");
				FUNC5("\t-brightness <num>      Set brightness");
				FUNC5("\t-gamma <num>           Set color gamma factor");
				FUNC5("\t-tint <num>            Set tint");
			}
			argv[j++] = argv[i];
		}

		if (a_m) {
			FUNC5("Missing argument for '%s'", argv[i]);
			return FALSE;
		}
	}
	*argc = j;

	if (!FUNC1(argc, argv) ||
	    !FUNC3(argc, argv))
		return FALSE;

	/* Assume that Atari800_tv_mode has been already initialised. */
	FUNC6(Atari800_tv_mode);
	FUNC7();
	return TRUE;
}