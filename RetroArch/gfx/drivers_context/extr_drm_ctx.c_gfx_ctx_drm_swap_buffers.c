
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_swapchain_images; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_4__ {int interval; int egl; } ;
typedef TYPE_2__ gfx_ctx_drm_data_t ;





 int drm_api ;
 int egl_swap_buffers (int *) ;
 int g_gbm_surface ;
 scalar_t__ gbm_surface_has_free_buffers (int ) ;
 int gfx_ctx_drm_queue_flip () ;
 scalar_t__ gfx_ctx_drm_wait_flip (int) ;
 int waiting_for_flip ;

__attribute__((used)) static void gfx_ctx_drm_swap_buffers(void *data, void *data2)
{
   gfx_ctx_drm_data_t *drm = (gfx_ctx_drm_data_t*)data;
   video_frame_info_t *video_info = (video_frame_info_t*)data2;

   switch (drm_api)
   {
      case 130:
      case 129:
      case 128:



         break;
      default:
         break;
   }






   if (gfx_ctx_drm_wait_flip(drm->interval))
      return;

   waiting_for_flip = gfx_ctx_drm_queue_flip();


   if (video_info->max_swapchain_images >= 3 &&
         gbm_surface_has_free_buffers(g_gbm_surface))
      return;

   gfx_ctx_drm_wait_flip(1);
}
