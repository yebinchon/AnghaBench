#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  asp_ratio; } ;
struct TYPE_5__ {int width; int height; } ;
struct TYPE_4__ {int width; int height; } ;

/* Variables and functions */
 void* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,double*,double*) ; 
 int TRUE ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,double*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int VIDEOMODE_80_column ; 
 int /*<<< orphan*/  VIDEOMODE_FIT_SIZE ; 
 int VIDEOMODE_HORIZONTAL_CUSTOM ; 
 int /*<<< orphan*/  VIDEOMODE_HORIZONTAL_SIZE ; 
 int /*<<< orphan*/  VIDEOMODE_KEEP_ASPECT_SIZE ; 
 int VIDEOMODE_MAX_HORIZONTAL_AREA ; 
 int VIDEOMODE_MAX_VERTICAL_AREA ; 
 int VIDEOMODE_MIN_HORIZONTAL_AREA ; 
 int VIDEOMODE_MIN_VERTICAL_AREA ; 
 size_t VIDEOMODE_MODE_XEP80 ; 
 int VIDEOMODE_STRETCH_CUSTOM ; 
 int /*<<< orphan*/  VIDEOMODE_STRETCH_SIZE ; 
 int VIDEOMODE_VERTICAL_CUSTOM ; 
 int /*<<< orphan*/  VIDEOMODE_VERTICAL_SIZE ; 
 int VIDEOMODE_custom_horizontal_area ; 
 double VIDEOMODE_custom_stretch ; 
 int VIDEOMODE_custom_vertical_area ; 
 void* VIDEOMODE_fit ; 
 int VIDEOMODE_horizontal_area ; 
 int /*<<< orphan*/  VIDEOMODE_horizontal_offset ; 
 double VIDEOMODE_host_aspect_ratio_h ; 
 double VIDEOMODE_host_aspect_ratio_w ; 
 void* VIDEOMODE_keep_aspect ; 
 int VIDEOMODE_rotate90 ; 
 int VIDEOMODE_stretch ; 
 int VIDEOMODE_vertical_area ; 
 int /*<<< orphan*/  VIDEOMODE_vertical_offset ; 
 int VIDEOMODE_windowed ; 
 TYPE_3__* display_modes ; 
 int /*<<< orphan*/  fit_cfg_strings ; 
 int /*<<< orphan*/  horizontal_area_cfg_strings ; 
 TYPE_2__ init_fs_resolution ; 
 int /*<<< orphan*/  keep_aspect_cfg_strings ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stretch_cfg_strings ; 
 int /*<<< orphan*/  vertical_area_cfg_strings ; 
 TYPE_1__ window_resolution ; 
 int /*<<< orphan*/  xep80_aspect_ratio_ntsc ; 

int FUNC7(int *argc, char *argv[])
{
	int i, j;
	for (i = j = 1; i < *argc; i++) {
		int i_a = (i + 1 < *argc); /* is argument available? */
		int a_m = FALSE; /* error, argument missing! */
		int a_i = FALSE; /* error, argument invalid! */

		if (FUNC6(argv[i], "-win-width") == 0) {
			if (i_a)
				a_i = (window_resolution.width = FUNC3(argv[++i])) == -1;
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-win-height") == 0) {
			if (i_a)
				a_i = (window_resolution.height = FUNC3(argv[++i])) == -1;
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-fs-width") == 0) {
			if (i_a)
				a_i = (init_fs_resolution.width = FUNC3(argv[++i])) == -1;
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-fs-height") == 0) {
			if (i_a)
				a_i = (init_fs_resolution.height = FUNC3(argv[++i])) == -1;
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-fullscreen") == 0)
			VIDEOMODE_windowed = FALSE;
		else if (FUNC6(argv[i], "-windowed") == 0)
			VIDEOMODE_windowed = TRUE;
		else if (FUNC6(argv[i], "-horiz-area") == 0) {
			if (i_a) {
				int idx = FUNC0(argv[++i], horizontal_area_cfg_strings, VIDEOMODE_HORIZONTAL_SIZE);
				if (idx < 0) {
					VIDEOMODE_horizontal_area = VIDEOMODE_HORIZONTAL_CUSTOM;
					a_i = (VIDEOMODE_custom_horizontal_area = FUNC3(argv[i])) == -1
					      || VIDEOMODE_custom_horizontal_area < VIDEOMODE_MIN_HORIZONTAL_AREA
					      || VIDEOMODE_custom_horizontal_area > VIDEOMODE_MAX_HORIZONTAL_AREA;
				} else
					VIDEOMODE_horizontal_area = idx;
			}
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-vert-area") == 0) {
			if (i_a) {
				int idx = FUNC0(argv[++i], vertical_area_cfg_strings, VIDEOMODE_VERTICAL_SIZE);
				if (idx < 0) {
					VIDEOMODE_vertical_area = VIDEOMODE_VERTICAL_CUSTOM;
					a_i = (VIDEOMODE_custom_vertical_area = FUNC3(argv[i])) == -1
					      || VIDEOMODE_custom_vertical_area < VIDEOMODE_MIN_VERTICAL_AREA
					      || VIDEOMODE_custom_vertical_area > VIDEOMODE_MAX_VERTICAL_AREA;
				} else
					VIDEOMODE_vertical_area = idx;
			}
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-horiz-shift") == 0) {
			if (i_a)
				a_i = !FUNC5(argv[++i], &VIDEOMODE_horizontal_offset);
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-vert-shift") == 0) {
			if (i_a)
				a_i = !FUNC5(argv[++i], &VIDEOMODE_vertical_offset);
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-stretch") == 0) {
			if (i_a) {
				int idx = FUNC0(argv[++i], stretch_cfg_strings, VIDEOMODE_STRETCH_SIZE);
				if (idx < 0) {
					VIDEOMODE_stretch = VIDEOMODE_STRETCH_CUSTOM;
					a_i = !FUNC4(argv[i], &VIDEOMODE_custom_stretch)
					      || VIDEOMODE_custom_stretch < 1.0;
				} else
					VIDEOMODE_stretch = idx;
			}
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-fit-screen") == 0) {
			if (i_a) {
				if ((VIDEOMODE_fit = FUNC0(argv[++i], fit_cfg_strings, VIDEOMODE_FIT_SIZE)) < 0)
					a_i = TRUE;
			}
			else a_m = TRUE;
		}
		else if (FUNC6(argv[i], "-image-aspect") == 0) {
			if (i_a) {
				if ((VIDEOMODE_keep_aspect = FUNC0(argv[++i], keep_aspect_cfg_strings, VIDEOMODE_KEEP_ASPECT_SIZE)) < 0)
					a_i = TRUE;
			}
			else a_m = TRUE;
		}
#if SUPPORTS_ROTATE_VIDEOMODE
		else if (strcmp(argv[i], "-rotate90") == 0)
			VIDEOMODE_rotate90 = TRUE;
		else if (strcmp(argv[i], "-no-rotate90") == 0)
			VIDEOMODE_rotate90 = FALSE;
#endif /* SUPPORTS_ROTATE_VIDEOMODE */
		else if (FUNC6(argv[i], "-host-aspect-ratio") == 0) {
			if (i_a) {
				if (FUNC6(argv[++i], "auto") == 0)
					VIDEOMODE_host_aspect_ratio_w = VIDEOMODE_host_aspect_ratio_h = 0.0;
				else
					a_i = !FUNC2(argv[i], &VIDEOMODE_host_aspect_ratio_w, &VIDEOMODE_host_aspect_ratio_h);
			}
			else a_m = TRUE;
		}
#if COLUMN_80
		else if (strcmp(argv[i], "-80column") == 0)
			VIDEOMODE_80_column = TRUE;
		else if (strcmp(argv[i], "-no-80column") == 0)
			VIDEOMODE_80_column = FALSE;
#endif /* COLUMN_80 */
		else {
			if (FUNC6(argv[i], "-help") == 0) {
				FUNC1("\t-win-width <num>            Host window width");
				FUNC1("\t-win-height <num>           Host window height");
				FUNC1("\t-fs-width <num>             Host fullscreen width");
				FUNC1("\t-fs-height <num>            Host fullscreen height");
				FUNC1("\t-fullscreen                 Run fullscreen");
				FUNC1("\t-windowed                   Run in window");
				FUNC1("\t-horiz-area narrow|tv|full|<number>");
				FUNC1("\t                            Set horizontal view area");
				FUNC1("\t-vert-area short|tv|full|<number>");
				FUNC1("\t                            Set vertical view area");
				FUNC1("\t-horiz-shift <num>          Set horizontal shift of the visible area (-%i..%i)", VIDEOMODE_MAX_HORIZONTAL_AREA, VIDEOMODE_MAX_HORIZONTAL_AREA);
				FUNC1("\t-vert-shift <num>           Set vertical shift of the visible area (-%i..%i)", VIDEOMODE_MAX_VERTICAL_AREA, VIDEOMODE_MAX_VERTICAL_AREA);
				FUNC1("\t-stretch none|integral|full|<number>");
				FUNC1("\t                            Set method of image stretching");
				FUNC1("\t-fit-screen width|height|both");
				FUNC1("\t                            Set method of image fitting the screen");
				FUNC1("\t-image-aspect none|square-pixels|real");
				FUNC1("\t                            Set image aspect ratio");
#if SUPPORTS_ROTATE_VIDEOMODE
				Log_print("\t-rotate90                   Rotate the screen sideways");
				Log_print("\t-no-rotate90                Don't rotate the screen");
#endif /* SUPPORTS_ROTATE_VIDEOMODE */
				FUNC1("\t-host-aspect-ratio auto|<w>:<h>");
				FUNC1("\t                            Set host display aspect ratio");
#if COLUMN_80
				Log_print("\t-80column                   Show output of an 80 column card, if present");
				Log_print("\t-no-80column                Show standard screen output");
#endif
			}
			argv[j++] = argv[i];
		}

		if (a_m) {
			FUNC1("Missing argument for '%s'", argv[i]);
			return FALSE;
		} else if (a_i) {
			FUNC1("Invalid argument for '%s'", argv[--i]);
			return FALSE;
		}
	}
	*argc = j;

#ifdef XEP80_EMULATION
	display_modes[VIDEOMODE_MODE_XEP80].asp_ratio = xep80_aspect_ratio_ntsc;
#endif
	return TRUE;
}