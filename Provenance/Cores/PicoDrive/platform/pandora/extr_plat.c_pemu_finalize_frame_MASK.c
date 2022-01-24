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
struct TYPE_2__ {int EmuOpt; } ;

/* Variables and functions */
 int EOPT_EN_CD_LEDS ; 
 int EOPT_SHOW_FPS ; 
 int PAHW_MCD ; 
 int PicoAHW ; 
 TYPE_1__ currentConfig ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char const*) ; 
 int g_osd_fps_x ; 
 int /*<<< orphan*/  g_osd_y ; 

void FUNC2(const char *fps, const char *notice)
{
	if (notice && notice[0])
		FUNC1(2, g_osd_y, notice);
	if (fps && fps[0] && (currentConfig.EmuOpt & EOPT_SHOW_FPS))
		FUNC1(g_osd_fps_x, g_osd_y, fps);
	if ((PicoAHW & PAHW_MCD) && (currentConfig.EmuOpt & EOPT_EN_CD_LEDS))
		FUNC0();
}