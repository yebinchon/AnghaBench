#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ refresh_rate; scalar_t__ black_frame_insertion; } ;
typedef  TYPE_1__ video_frame_info_t ;
struct drm_fb {int /*<<< orphan*/  fb_id; } ;
struct TYPE_11__ {unsigned int fb_width; unsigned int fb_height; } ;
typedef  TYPE_2__ gfx_ctx_drm_data_t ;
struct TYPE_13__ {int count_modes; TYPE_6__* modes; } ;
struct TYPE_12__ {unsigned int hdisplay; unsigned int vdisplay; float vrefresh; } ;

/* Variables and functions */
 int GBM_BO_USE_RENDERING ; 
 int GBM_BO_USE_SCANOUT ; 
 int /*<<< orphan*/  GBM_FORMAT_XRGB8888 ; 
#define  GFX_CTX_NONE 131 
#define  GFX_CTX_OPENGL_API 130 
#define  GFX_CTX_OPENGL_ES_API 129 
#define  GFX_CTX_OPENVG_API 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_6__*) ; 
 int drm_api ; 
 struct drm_fb* FUNC2 (int /*<<< orphan*/ ) ; 
 float FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  g_bo ; 
 int /*<<< orphan*/  g_connector_id ; 
 int /*<<< orphan*/  g_crtc_id ; 
 TYPE_7__* g_drm_connector ; 
 int /*<<< orphan*/  g_drm_fd ; 
 TYPE_6__* g_drm_mode ; 
 int /*<<< orphan*/  g_gbm_dev ; 
 int /*<<< orphan*/  g_gbm_surface ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC11(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   float refresh_mod;
   int i, ret                  = 0;
   struct drm_fb *fb           = NULL;
   gfx_ctx_drm_data_t *drm     = (gfx_ctx_drm_data_t*)data;

   if (!drm)
      return false;

   FUNC5();

   /* If we use black frame insertion,
    * we fake a 60 Hz monitor for 120 Hz one,
    * etc, so try to match that. */
   refresh_mod = video_info->black_frame_insertion
      ? 0.5f : 1.0f;

   /* Find desired video mode, and use that.
    * If not fullscreen, we get desired windowed size,
    * which is not appropriate. */
   if ((width == 0 && height == 0) || !fullscreen)
      g_drm_mode = &g_drm_connector->modes[0];
   else
   {
      /* Try to match refresh_rate as closely as possible.
       *
       * Lower resolutions tend to have multiple supported
       * refresh rates as well.
       */
      float minimum_fps_diff = 0.0f;

      /* Find best match. */
      for (i = 0; i < g_drm_connector->count_modes; i++)
      {
         float diff;
         if (width != g_drm_connector->modes[i].hdisplay ||
               height != g_drm_connector->modes[i].vdisplay)
            continue;

         diff = FUNC3(refresh_mod * g_drm_connector->modes[i].vrefresh
               - video_info->refresh_rate);

         if (!g_drm_mode || diff < minimum_fps_diff)
         {
            g_drm_mode = &g_drm_connector->modes[i];
            minimum_fps_diff = diff;
         }
      }
   }

   if (!g_drm_mode)
   {
      FUNC0("[KMS/EGL]: Did not find suitable video mode for %u x %u.\n",
            width, height);
      goto error;
   }

   drm->fb_width    = g_drm_mode->hdisplay;
   drm->fb_height   = g_drm_mode->vdisplay;

   /* Create GBM surface. */
   g_gbm_surface = FUNC7(
         g_gbm_dev,
         drm->fb_width,
         drm->fb_height,
         GBM_FORMAT_XRGB8888,
         GBM_BO_USE_SCANOUT | GBM_BO_USE_RENDERING);

   if (!g_gbm_surface)
   {
      FUNC0("[KMS/EGL]: Couldn't create GBM surface.\n");
      goto error;
   }

   switch (drm_api)
   {
      case GFX_CTX_OPENGL_API:
      case GFX_CTX_OPENGL_ES_API:
      case GFX_CTX_OPENVG_API:
#ifdef HAVE_EGL
         if (!gfx_ctx_drm_egl_set_video_mode(drm))
            goto error;
#endif
         break;
      case GFX_CTX_NONE:
      default:
         break;
   }

   g_bo = FUNC8(g_gbm_surface);

   fb = (struct drm_fb*)FUNC6(g_bo);

   if (!fb)
      fb   = FUNC2(g_bo);

   ret     = FUNC1(g_drm_fd,
         g_crtc_id, fb->fb_id, 0, 0, &g_connector_id, 1, g_drm_mode);
   if (ret < 0)
      goto error;

   return true;

error:
   FUNC9(drm);

   if (drm)
      FUNC4(drm);

   return false;
}