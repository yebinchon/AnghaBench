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
struct drm_video {int /*<<< orphan*/  vsync_condition; int /*<<< orphan*/  vsync_cond_mutex; int /*<<< orphan*/  pending_mutex; scalar_t__ menu_surface; scalar_t__ main_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_video*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_video*) ; 
 int /*<<< orphan*/ * g_drm_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data)
{
   struct drm_video *_drmvars = data;

   if (!_drmvars)
      return;

   FUNC0(_drmvars, &_drmvars->main_surface);

   if (_drmvars->menu_surface)
      FUNC0(_drmvars, &_drmvars->menu_surface);

   /* Destroy mutexes and conditions. */
   FUNC3(_drmvars->pending_mutex);
   FUNC3(_drmvars->vsync_cond_mutex);
   FUNC2(_drmvars->vsync_condition);

   g_drm_mode = NULL;

   FUNC1(_drmvars);
}