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
struct drm_fb {int /*<<< orphan*/  fb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_PAGE_FLIP_EVENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_crtc_id ; 
 int /*<<< orphan*/  g_drm_fd ; 
 int /*<<< orphan*/  g_gbm_surface ; 
 int /*<<< orphan*/  g_next_bo ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  waiting_for_flip ; 

__attribute__((used)) static bool FUNC4(void)
{
   struct drm_fb *fb = NULL;

   g_next_bo         = FUNC3(g_gbm_surface);
   fb                = (struct drm_fb*)FUNC2(g_next_bo);

   if (!fb)
      fb             = (struct drm_fb*)FUNC1(g_next_bo);

   if (FUNC0(g_drm_fd, g_crtc_id, fb->fb_id,
         DRM_MODE_PAGE_FLIP_EVENT, &waiting_for_flip) == 0)
      return true;

   /* Failed to queue page flip. */
   return false;
}