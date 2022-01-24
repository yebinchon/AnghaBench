#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VIDEOMODE_resolution_t ;
struct TYPE_8__ {int /*<<< orphan*/  min_h; int /*<<< orphan*/  min_w; } ;
struct TYPE_7__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,double*) ; 
 int /*<<< orphan*/  CompareResolutions ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* FUNC2 (size_t*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 double VIDEOMODE_host_aspect_ratio_h ; 
 double VIDEOMODE_host_aspect_ratio_w ; 
 size_t current_resolution ; 
 TYPE_4__* display_modes ; 
 TYPE_3__ init_fs_resolution ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,size_t,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* resolutions ; 
 size_t resolutions_size ; 

int FUNC8(void)
{
	/* PLATFORM_Initialise must be called earlier! */
	resolutions = FUNC2(&resolutions_size);
	if (resolutions == NULL) {
		FUNC1("Fatal error: System reports no display resolutions available");
		return FALSE;
	}

	FUNC7(resolutions, resolutions_size, sizeof(VIDEOMODE_resolution_t), &CompareResolutions);
	FUNC4();
	if (resolutions_size == 0) {
		FUNC1("Fatal error: System reports no resolution higher than minimal %ux%u available",
		          display_modes[0].min_w, display_modes[0].min_h);
		return FALSE;
	}

	/* Find the resolution from config file/command line in RESOLUTIONS. */
	for (current_resolution = 0; current_resolution < resolutions_size; current_resolution ++) {
		if (resolutions[current_resolution].width >= init_fs_resolution.width &&
		    resolutions[current_resolution].height >= init_fs_resolution.height)
			break;
	}
	if (current_resolution >= resolutions_size) {
		/* No resolution found, using the biggest one. */
		current_resolution = resolutions_size - 1;
		FUNC1("Requested resolution %ux%u is too big, using %ux%u instead.",
		          init_fs_resolution.width, init_fs_resolution.height,
		          resolutions[current_resolution].width, resolutions[current_resolution].height);
	} else if (resolutions[current_resolution].width != init_fs_resolution.width ||
	           resolutions[current_resolution].height != init_fs_resolution.height)
		FUNC1("Requested resolution %ux%u is not available, using %ux%u instead.",
		          init_fs_resolution.width, init_fs_resolution.height,
		          resolutions[current_resolution].width, resolutions[current_resolution].height);
	/* Autodetect host display aspect ratio if requested. */
	if (VIDEOMODE_host_aspect_ratio_w == 0.0 || VIDEOMODE_host_aspect_ratio_h == 0.0)
		FUNC0(&VIDEOMODE_host_aspect_ratio_w, &VIDEOMODE_host_aspect_ratio_h);

	FUNC5();
	if (!FUNC6()) {
		FUNC1("Fatal error: Cannot initialise video");
		return FALSE;
	}
#if SUPPORTS_PLATFORM_PALETTEUPDATE
	PLATFORM_PaletteUpdate();
#endif
	return TRUE;
}