
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fb_height; scalar_t__ fb_width; int egl; } ;
typedef TYPE_1__ gfx_ctx_drm_data_t ;






 int drm_api ;
 int egl_destroy (int *) ;
 int free_drm_resources (TYPE_1__*) ;
 int * g_bo ;
 scalar_t__ g_connector_id ;
 scalar_t__ g_crtc_id ;
 int * g_drm_mode ;
 int * g_next_bo ;
 int gfx_ctx_drm_wait_flip (int) ;

__attribute__((used)) static void gfx_ctx_drm_destroy_resources(gfx_ctx_drm_data_t *drm)
{
   if (!drm)
      return;


   gfx_ctx_drm_wait_flip(1);

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

   free_drm_resources(drm);

   g_drm_mode = ((void*)0);
   g_crtc_id = 0;
   g_connector_id = 0;

   drm->fb_width = 0;
   drm->fb_height = 0;

   g_bo = ((void*)0);
   g_next_bo = ((void*)0);
}
