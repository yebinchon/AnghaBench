#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_16__ {unsigned int tex_w; unsigned int tex_h; } ;
struct shader_pass {TYPE_13__ info; int /*<<< orphan*/  tex; int /*<<< orphan*/  last_height; int /*<<< orphan*/  last_width; } ;
struct TYPE_15__ {TYPE_4__* final_viewport; int /*<<< orphan*/  dev; int /*<<< orphan*/  frame_count; TYPE_1__* passes; int /*<<< orphan*/  pixel_size; } ;
struct TYPE_18__ {TYPE_11__ chain; int /*<<< orphan*/  stock_shader; } ;
typedef  TYPE_2__ hlsl_renderchain_t ;
struct TYPE_19__ {scalar_t__ renderchain_data; } ;
typedef  TYPE_3__ d3d9_video_t ;
struct TYPE_20__ {unsigned int Width; unsigned int Height; float MinZ; float MaxZ; int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int count; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  LPDIRECT3DSURFACE9 ;
typedef  TYPE_4__ D3DVIEWPORT9 ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCLEAR_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_13__*,unsigned int*,unsigned int*,unsigned int,unsigned int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct shader_pass*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_2__*,struct shader_pass*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static bool FUNC14(
      d3d9_video_t *d3d,
      const video_frame_info_t *video_info,
      const void *frame,
      unsigned width, unsigned height,
      unsigned pitch, unsigned rotation)
{
   LPDIRECT3DSURFACE9 back_buffer, target;
   unsigned i, current_width, current_height, out_width = 0, out_height = 0;
   struct shader_pass *last_pass    = NULL;
   struct shader_pass *first_pass   = NULL;
   hlsl_renderchain_t *chain        = (hlsl_renderchain_t*)
      d3d->renderchain_data;

   FUNC7(&chain->chain);

   current_width                  = width;
   current_height                 = height;

   first_pass                     = (struct shader_pass*)
      &chain->chain.passes->data[0];

   FUNC1(
         &first_pass->info,
         &out_width, &out_height,
         current_width, current_height, chain->chain.final_viewport);

   FUNC5(first_pass->tex,
         frame,
         first_pass->info.tex_w,
         first_pass->info.tex_h,
         width,
         height,
         first_pass->last_width,
         first_pass->last_height,
         pitch,
         chain->chain.pixel_size);

   /* Grab back buffer. */
   FUNC2(chain->chain.dev, 0, (void**)&back_buffer);

   /* In-between render target passes. */
   for (i = 0; i < chain->chain.passes->count - 1; i++)
   {
      D3DVIEWPORT9   viewport = {0};
      struct shader_pass *from_pass  = (struct shader_pass*)
         &chain->chain.passes->data[i];
      struct shader_pass *to_pass    = (struct shader_pass*)
         &chain->chain.passes->data[i + 1];

      FUNC10(to_pass->tex, 0, (void**)&target);

      FUNC3(chain->chain.dev, 0, target);

      FUNC1(&from_pass->info,
            &out_width, &out_height,
            current_width, current_height, chain->chain.final_viewport);

      /* Clear out whole FBO. */
      viewport.Width  = to_pass->info.tex_w;
      viewport.Height = to_pass->info.tex_h;
      viewport.MinZ   = 0.0f;
      viewport.MaxZ   = 1.0f;

      FUNC8(chain->chain.dev, &viewport);
      FUNC0(chain->chain.dev, 0, 0, D3DCLEAR_TARGET, 0, 1, 0);

      viewport.Width  = out_width;
      viewport.Height = out_height;

      FUNC8(chain->chain.dev, &viewport);

      FUNC13(
            d3d,
            chain, from_pass,
            current_width, current_height,
            out_width, out_height,
            out_width, out_height,
            chain->chain.frame_count, 0);

      FUNC12(chain,
            from_pass, 
            i + 1);

      current_width = out_width;
      current_height = out_height;
      FUNC9(target);
   }

   /* Final pass */
   FUNC3(chain->chain.dev, 0, back_buffer);

   last_pass = (struct shader_pass*)&chain->chain.passes->
      data[chain->chain.passes->count - 1];

   FUNC1(&last_pass->info,
         &out_width, &out_height,
         current_width, current_height, chain->chain.final_viewport);

   FUNC8(chain->chain.dev, chain->chain.final_viewport);

   FUNC13(
         d3d,
         chain, last_pass,
         current_width, current_height,
         out_width, out_height,
         chain->chain.final_viewport->Width,
         chain->chain.final_viewport->Height,
         chain->chain.frame_count, rotation);

   FUNC12(chain, last_pass,
         chain->chain.passes->count);

   chain->chain.frame_count++;

   FUNC9(back_buffer);

   FUNC6(&chain->chain);
   FUNC4(&chain->stock_shader, chain->chain.dev);
   FUNC11(chain, &chain->stock_shader,
         chain->chain.final_viewport->Width,
         chain->chain.final_viewport->Height, 0);

   return true;
}