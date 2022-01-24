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
struct TYPE_4__ {int width; int height; } ;
struct TYPE_3__ {int width; int height; } ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int FUNC1 (char*,double*,double*) ; 
 int TRUE ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,double*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int VIDEOMODE_80_column ; 
 int /*<<< orphan*/  VIDEOMODE_FIT_SIZE ; 
 int VIDEOMODE_HORIZONTAL_CUSTOM ; 
 int /*<<< orphan*/  VIDEOMODE_HORIZONTAL_SIZE ; 
 int /*<<< orphan*/  VIDEOMODE_KEEP_ASPECT_SIZE ; 
 int VIDEOMODE_MAX_HORIZONTAL_AREA ; 
 int VIDEOMODE_MAX_VERTICAL_AREA ; 
 int VIDEOMODE_MIN_HORIZONTAL_AREA ; 
 int VIDEOMODE_MIN_VERTICAL_AREA ; 
 int VIDEOMODE_STRETCH_CUSTOM ; 
 int /*<<< orphan*/  VIDEOMODE_STRETCH_SIZE ; 
 int VIDEOMODE_VERTICAL_CUSTOM ; 
 int /*<<< orphan*/  VIDEOMODE_VERTICAL_SIZE ; 
 int VIDEOMODE_custom_horizontal_area ; 
 double VIDEOMODE_custom_stretch ; 
 int VIDEOMODE_custom_vertical_area ; 
 int VIDEOMODE_fit ; 
 int VIDEOMODE_horizontal_area ; 
 int /*<<< orphan*/  VIDEOMODE_horizontal_offset ; 
 double VIDEOMODE_host_aspect_ratio_h ; 
 double VIDEOMODE_host_aspect_ratio_w ; 
 int VIDEOMODE_keep_aspect ; 
 int VIDEOMODE_rotate90 ; 
 int VIDEOMODE_stretch ; 
 int VIDEOMODE_vertical_area ; 
 int /*<<< orphan*/  VIDEOMODE_vertical_offset ; 
 int VIDEOMODE_windowed ; 
 int /*<<< orphan*/  fit_cfg_strings ; 
 int /*<<< orphan*/  horizontal_area_cfg_strings ; 
 TYPE_2__ init_fs_resolution ; 
 int /*<<< orphan*/  keep_aspect_cfg_strings ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stretch_cfg_strings ; 
 int /*<<< orphan*/  vertical_area_cfg_strings ; 
 TYPE_1__ window_resolution ; 

int FUNC7(char *option, char *ptr)
{
	if (FUNC6(option, "VIDEOMODE_WINDOW_WIDTH") == 0)
		return (window_resolution.width = FUNC3(ptr)) != -1;
	else if (FUNC6(option, "VIDEOMODE_WINDOW_HEIGHT") == 0)
		return (window_resolution.height = FUNC3(ptr)) != -1;
	else if (FUNC6(option, "VIDEOMODE_FULLSCREEN_WIDTH") == 0)
		return (init_fs_resolution.width = FUNC3(ptr)) != -1;
	else if (FUNC6(option, "VIDEOMODE_FULLSCREEN_HEIGHT") == 0)
		return (init_fs_resolution.height = FUNC3(ptr)) != -1;
	else if (FUNC6(option, "VIDEOMODE_WINDOWED") == 0)
		return (VIDEOMODE_windowed = FUNC2(ptr)) != -1;
	else if (FUNC6(option, "VIDEOMODE_HORIZONTAL_AREA") == 0) {
		
		int i = FUNC0(ptr, horizontal_area_cfg_strings, VIDEOMODE_HORIZONTAL_SIZE);
		if (i < 0) {
			VIDEOMODE_horizontal_area = VIDEOMODE_HORIZONTAL_CUSTOM;
			return (VIDEOMODE_custom_horizontal_area = FUNC3(ptr)) != -1
			       && VIDEOMODE_custom_horizontal_area >= VIDEOMODE_MIN_HORIZONTAL_AREA
			       && VIDEOMODE_custom_horizontal_area <= VIDEOMODE_MAX_HORIZONTAL_AREA;
		}
		VIDEOMODE_horizontal_area = i;
	}
	else if (FUNC6(option, "VIDEOMODE_VERTICAL_AREA") == 0) {
		int i = FUNC0(ptr, vertical_area_cfg_strings, VIDEOMODE_VERTICAL_SIZE);
		if (i < 0) {
			VIDEOMODE_vertical_area = VIDEOMODE_VERTICAL_CUSTOM;
			return (VIDEOMODE_custom_vertical_area = FUNC3(ptr)) != -1
			       && VIDEOMODE_custom_vertical_area >= VIDEOMODE_MIN_VERTICAL_AREA
			       && VIDEOMODE_custom_vertical_area <= VIDEOMODE_MAX_VERTICAL_AREA;
		}
		VIDEOMODE_vertical_area = i;
	}
	else if (FUNC6(option, "VIDEOMODE_HORIZONTAL_SHIFT") == 0)
		return FUNC5(ptr, &VIDEOMODE_horizontal_offset);
	else if (FUNC6(option, "VIDEOMODE_VERTICAL_SHIFT") == 0)
		return FUNC5(ptr, &VIDEOMODE_vertical_offset);
	else if (FUNC6(option, "VIDEOMODE_STRETCH") == 0) {
		int i = FUNC0(ptr, stretch_cfg_strings, VIDEOMODE_STRETCH_SIZE);
		if (i < 0) {
			VIDEOMODE_stretch = VIDEOMODE_STRETCH_CUSTOM;
			return FUNC4(ptr, &VIDEOMODE_custom_stretch)
			        && VIDEOMODE_custom_stretch >= 1.0;
		}
		VIDEOMODE_stretch = i;
	}
	else if (FUNC6(option, "VIDEOMODE_FIT") == 0) {
		int i = FUNC0(ptr, fit_cfg_strings, VIDEOMODE_FIT_SIZE);
		if (i < 0)
			return FALSE;
		VIDEOMODE_fit = i;
	}
	else if (FUNC6(option, "VIDEOMODE_IMAGE_ASPECT") == 0) {
		int i = FUNC0(ptr, keep_aspect_cfg_strings, VIDEOMODE_KEEP_ASPECT_SIZE);
		if (i < 0)
			return FALSE;
		VIDEOMODE_keep_aspect = i;
	}
#if SUPPORTS_ROTATE_VIDEOMODE
	else if (strcmp(option, "VIDEOMODE_ROTATE90") == 0)
		return (VIDEOMODE_rotate90 = Util_sscanbool(ptr)) != -1;
#endif
	else if (FUNC6(option, "VIDEOMODE_HOST_ASPECT_RATIO") == 0) {
		if (FUNC6(ptr, "AUTO") == 0)
			VIDEOMODE_host_aspect_ratio_w = VIDEOMODE_host_aspect_ratio_h = 0.0;
		else
			return FUNC1(ptr, &VIDEOMODE_host_aspect_ratio_w, &VIDEOMODE_host_aspect_ratio_h);
	}
#if COLUMN_80
	else if (strcmp(option, "VIDEOMODE_80_COLUMN") == 0)
		return (VIDEOMODE_80_column = Util_sscanbool(ptr)) != -1;
#endif
	else
		return FALSE;
	return TRUE;
}