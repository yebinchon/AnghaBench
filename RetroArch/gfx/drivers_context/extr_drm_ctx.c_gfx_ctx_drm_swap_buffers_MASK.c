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
struct TYPE_3__ {int max_swapchain_images; } ;
typedef  TYPE_1__ video_frame_info_t ;
struct TYPE_4__ {int interval; int /*<<< orphan*/  egl; } ;
typedef  TYPE_2__ gfx_ctx_drm_data_t ;

/* Variables and functions */
#define  GFX_CTX_OPENGL_API 130 
#define  GFX_CTX_OPENGL_ES_API 129 
#define  GFX_CTX_OPENVG_API 128 
 int drm_api ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_gbm_surface ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  waiting_for_flip ; 

__attribute__((used)) static void FUNC4(void *data, void *data2)
{
   gfx_ctx_drm_data_t        *drm = (gfx_ctx_drm_data_t*)data;
   video_frame_info_t *video_info = (video_frame_info_t*)data2;

   switch (drm_api)
   {
      case GFX_CTX_OPENGL_API:
      case GFX_CTX_OPENGL_ES_API:
      case GFX_CTX_OPENVG_API:
#ifdef HAVE_EGL
         egl_swap_buffers(&drm->egl);
#endif
         break;
      default:
         break;
   }

   /* I guess we have to wait for flip to have taken
    * place before another flip can be queued up.
    *
    * If true, we are still waiting for a flip
    * (nonblocking mode, so just drop the frame). */
   if (FUNC3(drm->interval))
      return;

   waiting_for_flip = FUNC2();

   /* Triple-buffered page flips */
   if (video_info->max_swapchain_images >= 3 &&
         FUNC1(g_gbm_surface))
      return;

   FUNC3(true);
}