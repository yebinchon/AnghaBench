#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_video {int menu_active; int /*<<< orphan*/  menu_surface; int /*<<< orphan*/  main_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_video*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *data, bool state, bool full_screen)
{
   struct drm_video *_drmvars = data;

   /* If menu was active but it's not anymore... */
   if (!state && _drmvars->menu_active)
   {
      /* We tell ony the plane we have to read from the main surface again */
      FUNC0(_drmvars->main_surface);
      /* We free the menu surface buffers */
      FUNC1(_drmvars, &_drmvars->menu_surface);
   }

   _drmvars->menu_active = state;
}