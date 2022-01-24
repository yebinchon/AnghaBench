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
struct TYPE_2__ {char* sharpness; char* resolution; char* artifacts; char* fringing; char* bleed; char* burst_phase; } ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILTER_NTSC_PRESET_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ FILTER_NTSC_setup ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int TRUE ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  preset_cfg_strings ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int FUNC5(int *argc, char *argv[])
{
	int i;
	int j;

	for (i = j = 1; i < *argc; i++) {
		int i_a = (i + 1 < *argc);		/* is argument available? */
		int a_m = FALSE;			/* error, argument missing! */
		
		if (FUNC4(argv[i], "-ntsc-sharpness") == 0) {
			if (i_a)
				FILTER_NTSC_setup.sharpness = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-ntsc-resolution") == 0) {
			if (i_a)
				FILTER_NTSC_setup.resolution = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-ntsc-artifacts") == 0) {
			if (i_a)
				FILTER_NTSC_setup.artifacts = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-ntsc-fringing") == 0) {
			if (i_a)
				FILTER_NTSC_setup.fringing = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-ntsc-bleed") == 0) {
			if (i_a)
				FILTER_NTSC_setup.bleed = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-ntsc-burstphase") == 0) {
			if (i_a)
				FILTER_NTSC_setup.burst_phase = FUNC3(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-ntsc-filter-preset") == 0) {
			if (i_a) {
				int idx = FUNC0(argv[++i], preset_cfg_strings, FILTER_NTSC_PRESET_SIZE);
				if (idx < 0) {
					FUNC2("Invalid value for -ntsc-filter-preset");
					return FALSE;
				}
				FUNC1(idx);
			} else a_m = TRUE;
		}
		else {
			if (FUNC4(argv[i], "-help") == 0) {
				FUNC2("\t-ntsc-sharpness <n>   Set sharpness for NTSC filter (default %.2g)", FILTER_NTSC_setup.sharpness);
				FUNC2("\t-ntsc-resolution <n>  Set resolution for NTSC filter (default %.2g)", FILTER_NTSC_setup.resolution);
				FUNC2("\t-ntsc-artifacts <n>   Set luma artifacts ratio for NTSC filter (default %.2g)", FILTER_NTSC_setup.artifacts);
				FUNC2("\t-ntsc-fringing <n>    Set chroma fringing ratio for NTSC filter (default %.2g)", FILTER_NTSC_setup.fringing);
				FUNC2("\t-ntsc-bleed <n>       Set bleed for NTSC filter (default %.2g)", FILTER_NTSC_setup.bleed);
				FUNC2("\t-ntsc-burstphase <n>  Set burst phase (artifact colours) for NTSC filter (default %.2g)", FILTER_NTSC_setup.burst_phase);
				FUNC2("\t-ntsc-filter-preset composite|svideo|rgb|monochrome");
				FUNC2("\t                      Use one of predefined NTSC filter adjustments");
			}
			argv[j++] = argv[i];
		}

		if (a_m) {
			FUNC2("Missing argument for '%s'", argv[i]);
			return FALSE;
		}
	}
	*argc = j;

	return TRUE;
}