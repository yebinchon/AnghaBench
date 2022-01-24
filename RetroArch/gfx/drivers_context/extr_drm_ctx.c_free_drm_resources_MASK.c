#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ fd; } ;
typedef  TYPE_1__ gfx_ctx_drm_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int g_drm_fd ; 
 int /*<<< orphan*/ * g_gbm_dev ; 
 int /*<<< orphan*/ * g_gbm_surface ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(gfx_ctx_drm_data_t *drm)
{
   if (!drm)
      return;

   /* Restore original CRTC. */
   FUNC3();

   if (g_gbm_surface)
      FUNC5(g_gbm_surface);

   if (g_gbm_dev)
      FUNC4(g_gbm_dev);

   FUNC2();

   if (drm->fd >= 0)
   {
      if (g_drm_fd >= 0)
      {
         FUNC1(g_drm_fd);
         FUNC0(drm->fd);
      }
   }

   g_gbm_surface      = NULL;
   g_gbm_dev          = NULL;
   g_drm_fd           = -1;
}