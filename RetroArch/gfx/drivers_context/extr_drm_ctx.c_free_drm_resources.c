
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fd; } ;
typedef TYPE_1__ gfx_ctx_drm_data_t ;


 int close (scalar_t__) ;
 int drmDropMaster (int) ;
 int drm_free () ;
 int drm_restore_crtc () ;
 int g_drm_fd ;
 int * g_gbm_dev ;
 int * g_gbm_surface ;
 int gbm_device_destroy (int *) ;
 int gbm_surface_destroy (int *) ;

__attribute__((used)) static void free_drm_resources(gfx_ctx_drm_data_t *drm)
{
   if (!drm)
      return;


   drm_restore_crtc();

   if (g_gbm_surface)
      gbm_surface_destroy(g_gbm_surface);

   if (g_gbm_dev)
      gbm_device_destroy(g_gbm_dev);

   drm_free();

   if (drm->fd >= 0)
   {
      if (g_drm_fd >= 0)
      {
         drmDropMaster(g_drm_fd);
         close(drm->fd);
      }
   }

   g_gbm_surface = ((void*)0);
   g_gbm_dev = ((void*)0);
   g_drm_fd = -1;
}
