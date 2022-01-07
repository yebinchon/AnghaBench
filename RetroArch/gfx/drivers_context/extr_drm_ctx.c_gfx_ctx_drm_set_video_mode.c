
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ refresh_rate; scalar_t__ black_frame_insertion; } ;
typedef TYPE_1__ video_frame_info_t ;
struct drm_fb {int fb_id; } ;
struct TYPE_11__ {unsigned int fb_width; unsigned int fb_height; } ;
typedef TYPE_2__ gfx_ctx_drm_data_t ;
struct TYPE_13__ {int count_modes; TYPE_6__* modes; } ;
struct TYPE_12__ {unsigned int hdisplay; unsigned int vdisplay; float vrefresh; } ;


 int GBM_BO_USE_RENDERING ;
 int GBM_BO_USE_SCANOUT ;
 int GBM_FORMAT_XRGB8888 ;




 int RARCH_ERR (char*,...) ;
 int drmModeSetCrtc (int ,int ,int ,int ,int ,int *,int,TYPE_6__*) ;
 int drm_api ;
 struct drm_fb* drm_fb_get_from_bo (int ) ;
 float fabsf (scalar_t__) ;
 int free (TYPE_2__*) ;
 int frontend_driver_install_signal_handler () ;
 int g_bo ;
 int g_connector_id ;
 int g_crtc_id ;
 TYPE_7__* g_drm_connector ;
 int g_drm_fd ;
 TYPE_6__* g_drm_mode ;
 int g_gbm_dev ;
 int g_gbm_surface ;
 scalar_t__ gbm_bo_get_user_data (int ) ;
 int gbm_surface_create (int ,unsigned int,unsigned int,int ,int) ;
 int gbm_surface_lock_front_buffer (int ) ;
 int gfx_ctx_drm_destroy_resources (TYPE_2__*) ;
 int gfx_ctx_drm_egl_set_video_mode (TYPE_2__*) ;

__attribute__((used)) static bool gfx_ctx_drm_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   float refresh_mod;
   int i, ret = 0;
   struct drm_fb *fb = ((void*)0);
   gfx_ctx_drm_data_t *drm = (gfx_ctx_drm_data_t*)data;

   if (!drm)
      return 0;

   frontend_driver_install_signal_handler();




   refresh_mod = video_info->black_frame_insertion
      ? 0.5f : 1.0f;




   if ((width == 0 && height == 0) || !fullscreen)
      g_drm_mode = &g_drm_connector->modes[0];
   else
   {





      float minimum_fps_diff = 0.0f;


      for (i = 0; i < g_drm_connector->count_modes; i++)
      {
         float diff;
         if (width != g_drm_connector->modes[i].hdisplay ||
               height != g_drm_connector->modes[i].vdisplay)
            continue;

         diff = fabsf(refresh_mod * g_drm_connector->modes[i].vrefresh
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
      RARCH_ERR("[KMS/EGL]: Did not find suitable video mode for %u x %u.\n",
            width, height);
      goto error;
   }

   drm->fb_width = g_drm_mode->hdisplay;
   drm->fb_height = g_drm_mode->vdisplay;


   g_gbm_surface = gbm_surface_create(
         g_gbm_dev,
         drm->fb_width,
         drm->fb_height,
         GBM_FORMAT_XRGB8888,
         GBM_BO_USE_SCANOUT | GBM_BO_USE_RENDERING);

   if (!g_gbm_surface)
   {
      RARCH_ERR("[KMS/EGL]: Couldn't create GBM surface.\n");
      goto error;
   }

   switch (drm_api)
   {
      case 130:
      case 129:
      case 128:




         break;
      case 131:
      default:
         break;
   }

   g_bo = gbm_surface_lock_front_buffer(g_gbm_surface);

   fb = (struct drm_fb*)gbm_bo_get_user_data(g_bo);

   if (!fb)
      fb = drm_fb_get_from_bo(g_bo);

   ret = drmModeSetCrtc(g_drm_fd,
         g_crtc_id, fb->fb_id, 0, 0, &g_connector_id, 1, g_drm_mode);
   if (ret < 0)
      goto error;

   return 1;

error:
   gfx_ctx_drm_destroy_resources(drm);

   if (drm)
      free(drm);

   return 0;
}
