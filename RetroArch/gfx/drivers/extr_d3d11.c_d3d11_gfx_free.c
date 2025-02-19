
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * vbo; int shader_font; int shader; } ;
struct TYPE_9__ {int * vbo; int texture; } ;
struct TYPE_8__ {int * vbo; int * ubo; int * texture; } ;
struct TYPE_11__ {int * device; int * context; int supportedFeatureLevel; int * swapChain; int * renderTargetView; int * state; int *** samplers; int * blend_disable; int * blend_enable; int * ubo; int * blend_pipeline; int * menu_pipeline_vbo; int * shaders; TYPE_3__ sprites; TYPE_2__ menu; TYPE_1__ frame; } ;
typedef TYPE_4__ d3d11_video_t ;


 unsigned int D3D11_MAX_GPU_COUNT ;
 unsigned int GFX_MAX_SHADERS ;
 size_t RARCH_FILTER_LINEAR ;
 size_t RARCH_FILTER_NEAREST ;
 unsigned int RARCH_WRAP_MAX ;
 int Release (int *) ;
 int * cached_context ;
 int * cached_device_d3d11 ;
 int cached_supportedFeatureLevel ;
 int ** d3d11_adapters ;
 int d3d11_free_overlays (TYPE_4__*) ;
 int d3d11_free_shader_preset (TYPE_4__*) ;
 int d3d11_release_shader (int *) ;
 int d3d11_release_texture (int *) ;
 int font_driver_free_osd () ;
 int free (TYPE_4__*) ;
 scalar_t__ video_driver_is_video_cache_context () ;
 int win32_destroy_window () ;
 int win32_monitor_from_window () ;

__attribute__((used)) static void d3d11_gfx_free(void* data)
{
   unsigned i;
   d3d11_video_t* d3d11 = (d3d11_video_t*)data;

   if (!d3d11)
      return;





   d3d11_free_shader_preset(d3d11);

   d3d11_release_texture(&d3d11->frame.texture[0]);
   Release(d3d11->frame.ubo);
   Release(d3d11->frame.vbo);

   d3d11_release_texture(&d3d11->menu.texture);
   Release(d3d11->menu.vbo);

   d3d11_release_shader(&d3d11->sprites.shader);
   d3d11_release_shader(&d3d11->sprites.shader_font);
   Release(d3d11->sprites.vbo);

   for (i = 0; i < GFX_MAX_SHADERS; i++)
      d3d11_release_shader(&d3d11->shaders[i]);

   Release(d3d11->menu_pipeline_vbo);
   Release(d3d11->blend_pipeline);

   Release(d3d11->ubo);

   Release(d3d11->blend_enable);
   Release(d3d11->blend_disable);

   for (i = 0; i < RARCH_WRAP_MAX; i++)
   {
      Release(d3d11->samplers[RARCH_FILTER_LINEAR][i]);
      Release(d3d11->samplers[RARCH_FILTER_NEAREST][i]);
   }

   Release(d3d11->state);
   Release(d3d11->renderTargetView);
   Release(d3d11->swapChain);

   font_driver_free_osd();

   if (video_driver_is_video_cache_context())
   {
      cached_device_d3d11 = d3d11->device;
      cached_context = d3d11->context;
      cached_supportedFeatureLevel = d3d11->supportedFeatureLevel;
   }
   else
   {
      Release(d3d11->context);
      Release(d3d11->device);
   }

   for (i = 0; i < D3D11_MAX_GPU_COUNT; i++)
   {
      if (d3d11_adapters[i])
      {
         Release(d3d11_adapters[i]);
         d3d11_adapters[i] = ((void*)0);
      }
   }







   free(d3d11);
}
