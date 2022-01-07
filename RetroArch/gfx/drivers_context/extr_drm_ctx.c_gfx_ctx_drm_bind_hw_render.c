
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int egl; } ;
typedef TYPE_1__ gfx_ctx_drm_data_t ;






 int drm_api ;
 int egl_bind_hw_render (int *,int) ;

__attribute__((used)) static void gfx_ctx_drm_bind_hw_render(void *data, bool enable)
{
   gfx_ctx_drm_data_t *drm = (gfx_ctx_drm_data_t*)data;

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
}
