#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* filename; int loaded; int adjust; } ;
struct TYPE_4__ {void* color_delay; void* hue; void* gamma; void* brightness; void* contrast; void* saturation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__ COLOURS_PAL_external ; 
 TYPE_1__ COLOURS_PAL_setup ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 void* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int FUNC5(int *argc, char *argv[])
{
	int i;
	int j;

	for (i = j = 1; i < *argc; i++) {
		int i_a = (i + 1 < *argc);		/* is argument available? */
		int a_m = FALSE;			/* error, argument missing! */
		
		if (FUNC4(argv[i], "-pal-saturation") == 0) {
			if (i_a)
				COLOURS_PAL_setup.saturation = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-pal-contrast") == 0) {
			if (i_a)
				COLOURS_PAL_setup.contrast = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-pal-brightness") == 0) {
			if (i_a)
				COLOURS_PAL_setup.brightness = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-pal-gamma") == 0) {
			if (i_a)
				COLOURS_PAL_setup.gamma = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-pal-tint") == 0) {
			if (i_a)
				COLOURS_PAL_setup.hue = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-pal-colordelay") == 0) {
			if (i_a)
				COLOURS_PAL_setup.color_delay = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-palettep") == 0) {
			if (i_a) {
				FUNC2(COLOURS_PAL_external.filename, argv[++i], sizeof(COLOURS_PAL_external.filename));
				/* Use the "loaded" flag to indicate that the palette must be loaded later. */
				COLOURS_PAL_external.loaded = TRUE;
			} else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-palettep-adjust") == 0)
			COLOURS_PAL_external.adjust = TRUE;
		else {
			if (FUNC4(argv[i], "-help") == 0) {
				FUNC1("\t-pal-saturation <num>  Set PAL color saturation");
				FUNC1("\t-pal-contrast <num>    Set PAL contrast");
				FUNC1("\t-pal-brightness <num>  Set PAL brightness");
				FUNC1("\t-pal-gamma <num>       Set PAL color gamma factor");
				FUNC1("\t-pal-tint <num>        Set PAL tint");
				FUNC1("\t-pal-colordelay <num>  Set PAL GTIA color delay");
				FUNC1("\t-palettep <filename>   Load PAL external palette");
				FUNC1("\t-palettep-adjust       Apply adjustments to PAL external palette");
			}
			argv[j++] = argv[i];
		}

		if (a_m) {
			FUNC1("Missing argument for '%s'", argv[i]);
			return FALSE;
		}
	}
	*argc = j;

	/* Try loading an external palette if needed. */
	if (COLOURS_PAL_external.loaded && !FUNC0(&COLOURS_PAL_external))
		FUNC1("Cannot read PAL palette from %s", COLOURS_PAL_external.filename);

	return TRUE;
}