
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb {int fb_id; } ;


 int DRM_MODE_PAGE_FLIP_EVENT ;
 scalar_t__ drmModePageFlip (int ,int ,int ,int ,int *) ;
 scalar_t__ drm_fb_get_from_bo (int ) ;
 int g_crtc_id ;
 int g_drm_fd ;
 int g_gbm_surface ;
 int g_next_bo ;
 scalar_t__ gbm_bo_get_user_data (int ) ;
 int gbm_surface_lock_front_buffer (int ) ;
 int waiting_for_flip ;

__attribute__((used)) static bool gfx_ctx_drm_queue_flip(void)
{
   struct drm_fb *fb = ((void*)0);

   g_next_bo = gbm_surface_lock_front_buffer(g_gbm_surface);
   fb = (struct drm_fb*)gbm_bo_get_user_data(g_next_bo);

   if (!fb)
      fb = (struct drm_fb*)drm_fb_get_from_bo(g_next_bo);

   if (drmModePageFlip(g_drm_fd, g_crtc_id, fb->fb_id,
         DRM_MODE_PAGE_FLIP_EVENT, &waiting_for_flip) == 0)
      return 1;


   return 0;
}
