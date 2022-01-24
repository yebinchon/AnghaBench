#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * vbo; int /*<<< orphan*/  shader_font; int /*<<< orphan*/  shader; } ;
struct TYPE_9__ {int /*<<< orphan*/ * vbo; int /*<<< orphan*/  texture; } ;
struct TYPE_8__ {int /*<<< orphan*/ * vbo; int /*<<< orphan*/ * ubo; int /*<<< orphan*/ * texture; } ;
struct TYPE_11__ {int /*<<< orphan*/ * device; int /*<<< orphan*/ * context; int /*<<< orphan*/  supportedFeatureLevel; int /*<<< orphan*/ * swapChain; int /*<<< orphan*/ * renderTargetView; int /*<<< orphan*/ * state; int /*<<< orphan*/ *** samplers; int /*<<< orphan*/ * blend_disable; int /*<<< orphan*/ * blend_enable; int /*<<< orphan*/ * ubo; int /*<<< orphan*/ * blend_pipeline; int /*<<< orphan*/ * menu_pipeline_vbo; int /*<<< orphan*/ * shaders; TYPE_3__ sprites; TYPE_2__ menu; TYPE_1__ frame; } ;
typedef  TYPE_4__ d3d11_video_t ;

/* Variables and functions */
 unsigned int D3D11_MAX_GPU_COUNT ; 
 unsigned int GFX_MAX_SHADERS ; 
 size_t RARCH_FILTER_LINEAR ; 
 size_t RARCH_FILTER_NEAREST ; 
 unsigned int RARCH_WRAP_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cached_context ; 
 int /*<<< orphan*/ * cached_device_d3d11 ; 
 int /*<<< orphan*/  cached_supportedFeatureLevel ; 
 int /*<<< orphan*/ ** d3d11_adapters ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void* data)
{
   unsigned       i;
   d3d11_video_t* d3d11 = (d3d11_video_t*)data;

   if (!d3d11)
      return;

#ifdef HAVE_OVERLAY
   d3d11_free_overlays(d3d11);
#endif

   FUNC2(d3d11);

   FUNC4(&d3d11->frame.texture[0]);
   FUNC0(d3d11->frame.ubo);
   FUNC0(d3d11->frame.vbo);

   FUNC4(&d3d11->menu.texture);
   FUNC0(d3d11->menu.vbo);

   FUNC3(&d3d11->sprites.shader);
   FUNC3(&d3d11->sprites.shader_font);
   FUNC0(d3d11->sprites.vbo);

   for (i = 0; i < GFX_MAX_SHADERS; i++)
      FUNC3(&d3d11->shaders[i]);

   FUNC0(d3d11->menu_pipeline_vbo);
   FUNC0(d3d11->blend_pipeline);

   FUNC0(d3d11->ubo);

   FUNC0(d3d11->blend_enable);
   FUNC0(d3d11->blend_disable);

   for (i = 0; i < RARCH_WRAP_MAX; i++)
   {
      FUNC0(d3d11->samplers[RARCH_FILTER_LINEAR][i]);
      FUNC0(d3d11->samplers[RARCH_FILTER_NEAREST][i]);
   }

   FUNC0(d3d11->state);
   FUNC0(d3d11->renderTargetView);
   FUNC0(d3d11->swapChain);

   FUNC5();

   if (FUNC7())
   {
      cached_device_d3d11 = d3d11->device;
      cached_context = d3d11->context;
      cached_supportedFeatureLevel = d3d11->supportedFeatureLevel;
   }
   else
   {
      FUNC0(d3d11->context);
      FUNC0(d3d11->device);
   }

   for (i = 0; i < D3D11_MAX_GPU_COUNT; i++)
   {
      if (d3d11_adapters[i])
      {
         FUNC0(d3d11_adapters[i]);
         d3d11_adapters[i] = NULL;
      }
   }

#ifdef HAVE_MONITOR
   win32_monitor_from_window();
#endif
#ifdef HAVE_WINDOW
   win32_destroy_window();
#endif
   FUNC6(d3d11);
}