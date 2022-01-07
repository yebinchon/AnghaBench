
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_18__ {int * handle; int * allocator; int * cmd; int * fence; } ;
struct TYPE_17__ {int * handle; int ** renderTargets; } ;
struct TYPE_28__ {int * pipe_font; int * pipe_noblend; int * pipe_blend; int * vbo; } ;
struct TYPE_26__ {int * handle; TYPE_12__* map; } ;
struct TYPE_25__ {int * handle; TYPE_12__* map; } ;
struct TYPE_24__ {int * handle; TYPE_12__* map; } ;
struct TYPE_27__ {int * rootSignature; int * sl_rootSignature; int * cs_rootSignature; TYPE_7__ rtv_heap; TYPE_6__ srv_heap; TYPE_5__ sampler_heap; } ;
struct TYPE_22__ {int * upload_buffer; int * handle; } ;
struct TYPE_23__ {TYPE_3__ texture; int * vbo; } ;
struct TYPE_21__ {TYPE_1__* texture; int * vbo; int * ubo; } ;
struct TYPE_19__ {int ** adapters; int * adapter; int * device; int * factory; TYPE_11__ queue; TYPE_10__ chain; TYPE_9__ sprites; int * mipmapgen_pipe; int ** pipes; int * ubo; TYPE_8__ desc; TYPE_4__ menu; TYPE_2__ frame; int * menu_pipeline_vbo; } ;
typedef TYPE_12__ d3d12_video_t ;
struct TYPE_20__ {int * upload_buffer; int * handle; } ;


 unsigned int D3D12_MAX_GPU_COUNT ;
 unsigned int GFX_MAX_SHADERS ;
 int Release (int *) ;
 int d3d12_free_overlays (TYPE_12__*) ;
 int d3d12_free_shader_preset (TYPE_12__*) ;
 int d3d12_gfx_sync (TYPE_12__*) ;
 int font_driver_free_osd () ;
 int free (TYPE_12__*) ;
 int win32_destroy_window () ;
 int win32_monitor_from_window () ;

__attribute__((used)) static void d3d12_gfx_free(void* data)
{
   unsigned i;
   d3d12_video_t* d3d12 = (d3d12_video_t*)data;

   if (!d3d12)
      return;

   d3d12_gfx_sync(d3d12);





   d3d12_free_shader_preset(d3d12);

   font_driver_free_osd();

   Release(d3d12->sprites.vbo);
   Release(d3d12->menu_pipeline_vbo);

   Release(d3d12->frame.ubo);
   Release(d3d12->frame.vbo);
   Release(d3d12->frame.texture[0].handle);
   Release(d3d12->frame.texture[0].upload_buffer);
   Release(d3d12->menu.vbo);
   Release(d3d12->menu.texture.handle);
   Release(d3d12->menu.texture.upload_buffer);

   free(d3d12->desc.sampler_heap.map);
   free(d3d12->desc.srv_heap.map);
   free(d3d12->desc.rtv_heap.map);
   Release(d3d12->desc.sampler_heap.handle);
   Release(d3d12->desc.srv_heap.handle);
   Release(d3d12->desc.rtv_heap.handle);

   Release(d3d12->desc.cs_rootSignature);
   Release(d3d12->desc.sl_rootSignature);
   Release(d3d12->desc.rootSignature);

   Release(d3d12->ubo);

   for (i = 0; i < GFX_MAX_SHADERS; i++)
      Release(d3d12->pipes[i]);

   Release(d3d12->mipmapgen_pipe);
   Release(d3d12->sprites.pipe_blend);
   Release(d3d12->sprites.pipe_noblend);
   Release(d3d12->sprites.pipe_font);

   Release(d3d12->queue.fence);
   Release(d3d12->chain.renderTargets[0]);
   Release(d3d12->chain.renderTargets[1]);
   Release(d3d12->chain.handle);

   Release(d3d12->queue.cmd);
   Release(d3d12->queue.allocator);
   Release(d3d12->queue.handle);

   Release(d3d12->factory);
   Release(d3d12->device);
   Release(d3d12->adapter);

   for (i = 0; i < D3D12_MAX_GPU_COUNT; i++)
   {
      if (d3d12->adapters[i])
      {
         Release(d3d12->adapters[i]);
         d3d12->adapters[i] = ((void*)0);
      }
   }
   free(d3d12);
}
