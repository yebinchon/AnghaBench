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
struct TYPE_4__ {int /*<<< orphan*/  pixels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  g_screen_height ; 
 int /*<<< orphan*/  g_screen_ptr ; 
 int g_screen_width ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ plat_sdl_gl_active ; 
 int /*<<< orphan*/ * plat_sdl_overlay ; 
 TYPE_1__* plat_sdl_screen ; 
 int /*<<< orphan*/  shadow_fb ; 

void FUNC4(void)
{
	FUNC3(g_screen_width, g_screen_height, 0);

	if (plat_sdl_overlay != NULL || plat_sdl_gl_active) {
		g_screen_ptr = shadow_fb;
	}
	else {
		if (FUNC2(plat_sdl_screen))
			FUNC1(plat_sdl_screen);
		g_screen_ptr = plat_sdl_screen->pixels;
	}
	FUNC0(g_screen_ptr, g_screen_width * 2);
}