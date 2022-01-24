#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * pixels; } ;
struct TYPE_12__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_11__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SDL_Rect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int g_menuscreen_h ; 
 int /*<<< orphan*/ * g_menuscreen_ptr ; 
 int g_menuscreen_w ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ plat_sdl_gl_active ; 
 TYPE_3__* plat_sdl_overlay ; 
 TYPE_2__* plat_sdl_screen ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  shadow_fb ; 

void FUNC8(void)
{
	if (plat_sdl_overlay != NULL) {
		SDL_Rect dstrect =
			{ 0, 0, plat_sdl_screen->w, plat_sdl_screen->h };

		FUNC2(plat_sdl_overlay);
		FUNC7(plat_sdl_overlay->pixels[0], shadow_fb,
				g_menuscreen_w * g_menuscreen_h);
		FUNC5(plat_sdl_overlay);

		FUNC0(plat_sdl_overlay, &dstrect);
	}
	else if (plat_sdl_gl_active) {
		FUNC6(g_menuscreen_ptr, g_menuscreen_w, g_menuscreen_h);
	}
	else {
		if (FUNC3(plat_sdl_screen))
			FUNC4(plat_sdl_screen);
		FUNC1(plat_sdl_screen);
	}
	g_menuscreen_ptr = NULL;

}