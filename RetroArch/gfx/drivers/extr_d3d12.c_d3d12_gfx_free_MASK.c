#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/ * handle; int /*<<< orphan*/ * allocator; int /*<<< orphan*/ * cmd; int /*<<< orphan*/ * fence; } ;
struct TYPE_17__ {int /*<<< orphan*/ * handle; int /*<<< orphan*/ ** renderTargets; } ;
struct TYPE_28__ {int /*<<< orphan*/ * pipe_font; int /*<<< orphan*/ * pipe_noblend; int /*<<< orphan*/ * pipe_blend; int /*<<< orphan*/ * vbo; } ;
struct TYPE_26__ {int /*<<< orphan*/ * handle; TYPE_12__* map; } ;
struct TYPE_25__ {int /*<<< orphan*/ * handle; TYPE_12__* map; } ;
struct TYPE_24__ {int /*<<< orphan*/ * handle; TYPE_12__* map; } ;
struct TYPE_27__ {int /*<<< orphan*/ * rootSignature; int /*<<< orphan*/ * sl_rootSignature; int /*<<< orphan*/ * cs_rootSignature; TYPE_7__ rtv_heap; TYPE_6__ srv_heap; TYPE_5__ sampler_heap; } ;
struct TYPE_22__ {int /*<<< orphan*/ * upload_buffer; int /*<<< orphan*/ * handle; } ;
struct TYPE_23__ {TYPE_3__ texture; int /*<<< orphan*/ * vbo; } ;
struct TYPE_21__ {TYPE_1__* texture; int /*<<< orphan*/ * vbo; int /*<<< orphan*/ * ubo; } ;
struct TYPE_19__ {int /*<<< orphan*/ ** adapters; int /*<<< orphan*/ * adapter; int /*<<< orphan*/ * device; int /*<<< orphan*/ * factory; TYPE_11__ queue; TYPE_10__ chain; TYPE_9__ sprites; int /*<<< orphan*/ * mipmapgen_pipe; int /*<<< orphan*/ ** pipes; int /*<<< orphan*/ * ubo; TYPE_8__ desc; TYPE_4__ menu; TYPE_2__ frame; int /*<<< orphan*/ * menu_pipeline_vbo; } ;
typedef  TYPE_12__ d3d12_video_t ;
struct TYPE_20__ {int /*<<< orphan*/ * upload_buffer; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 unsigned int D3D12_MAX_GPU_COUNT ; 
 unsigned int GFX_MAX_SHADERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(void* data)
{
   unsigned       i;
   d3d12_video_t* d3d12 = (d3d12_video_t*)data;

   if (!d3d12)
      return;

   FUNC3(d3d12);

#ifdef HAVE_OVERLAY
   d3d12_free_overlays(d3d12);
#endif

   FUNC2(d3d12);

   FUNC4();

   FUNC0(d3d12->sprites.vbo);
   FUNC0(d3d12->menu_pipeline_vbo);

   FUNC0(d3d12->frame.ubo);
   FUNC0(d3d12->frame.vbo);
   FUNC0(d3d12->frame.texture[0].handle);
   FUNC0(d3d12->frame.texture[0].upload_buffer);
   FUNC0(d3d12->menu.vbo);
   FUNC0(d3d12->menu.texture.handle);
   FUNC0(d3d12->menu.texture.upload_buffer);

   FUNC5(d3d12->desc.sampler_heap.map);
   FUNC5(d3d12->desc.srv_heap.map);
   FUNC5(d3d12->desc.rtv_heap.map);
   FUNC0(d3d12->desc.sampler_heap.handle);
   FUNC0(d3d12->desc.srv_heap.handle);
   FUNC0(d3d12->desc.rtv_heap.handle);

   FUNC0(d3d12->desc.cs_rootSignature);
   FUNC0(d3d12->desc.sl_rootSignature);
   FUNC0(d3d12->desc.rootSignature);

   FUNC0(d3d12->ubo);

   for (i = 0; i < GFX_MAX_SHADERS; i++)
      FUNC0(d3d12->pipes[i]);

   FUNC0(d3d12->mipmapgen_pipe);
   FUNC0(d3d12->sprites.pipe_blend);
   FUNC0(d3d12->sprites.pipe_noblend);
   FUNC0(d3d12->sprites.pipe_font);

   FUNC0(d3d12->queue.fence);
   FUNC0(d3d12->chain.renderTargets[0]);
   FUNC0(d3d12->chain.renderTargets[1]);
   FUNC0(d3d12->chain.handle);

   FUNC0(d3d12->queue.cmd);
   FUNC0(d3d12->queue.allocator);
   FUNC0(d3d12->queue.handle);

   FUNC0(d3d12->factory);
   FUNC0(d3d12->device);
   FUNC0(d3d12->adapter);

   for (i = 0; i < D3D12_MAX_GPU_COUNT; i++)
   {
      if (d3d12->adapters[i])
      {
         FUNC0(d3d12->adapters[i]);
         d3d12->adapters[i] = NULL;
      }
   }

#ifdef HAVE_MONITOR
   win32_monitor_from_window();
#endif
#ifdef HAVE_WINDOW
   win32_destroy_window();
#endif

   FUNC5(d3d12);
}