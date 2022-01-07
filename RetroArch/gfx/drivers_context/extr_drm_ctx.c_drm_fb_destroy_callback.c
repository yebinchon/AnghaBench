
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbm_bo {int dummy; } ;
struct drm_fb {scalar_t__ fb_id; } ;


 int drmModeRmFB (int ,scalar_t__) ;
 int free (struct drm_fb*) ;
 int g_drm_fd ;

__attribute__((used)) static void drm_fb_destroy_callback(struct gbm_bo *bo, void *data)
{
   struct drm_fb *fb = (struct drm_fb*)data;

   if (fb && fb->fb_id)
      drmModeRmFB(g_drm_fd, fb->fb_id);

   free(fb);
}
