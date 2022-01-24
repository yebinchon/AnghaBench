#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int idx; struct gfx_fbo_scale* scale; } ;
typedef  TYPE_3__ video_shader_ctx_scale_t ;
struct TYPE_22__ {int num; } ;
typedef  TYPE_4__ video_shader_ctx_info_t ;
struct gfx_fbo_scale {int valid; float scale_x; float scale_y; void* type_y; void* type_x; } ;
struct TYPE_23__ {unsigned int video_width; unsigned int video_height; int fbo_feedback_enable; unsigned int fbo_feedback_pass; int fbo_inited; TYPE_2__* fbo_rect; int /*<<< orphan*/  shader_data; TYPE_1__* shader; int /*<<< orphan*/  has_fbo; } ;
typedef  TYPE_5__ gl_t ;
struct TYPE_24__ {int fbo_pass; int /*<<< orphan*/  fbo_texture; struct gfx_fbo_scale* fbo_scale; } ;
typedef  TYPE_6__ gl2_renderchain_data_t ;
struct TYPE_20__ {void* height; void* width; int /*<<< orphan*/  img_height; int /*<<< orphan*/  img_width; } ;
struct TYPE_19__ {int (* get_feedback_pass ) (int /*<<< orphan*/ ,unsigned int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,void*,void*) ; 
 void* RARCH_SCALE_INPUT ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_6__*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC11(
      gl_t *gl,
      gl2_renderchain_data_t *chain,
      unsigned fbo_width, unsigned fbo_height)
{
   int i;
   unsigned width, height;
   video_shader_ctx_scale_t scaler;
   video_shader_ctx_info_t shader_info;
   struct gfx_fbo_scale scale, scale_last;

   if (!FUNC6(gl, &shader_info))
      return;

   if (!gl || shader_info.num == 0)
      return;

   width        = gl->video_width;
   height       = gl->video_height;

   scaler.idx   = 1;
   scaler.scale = &scale;

   FUNC7(gl, &scaler);

   scaler.idx   = shader_info.num;
   scaler.scale = &scale_last;

   FUNC7(gl, &scaler);

   /* we always want FBO to be at least initialized on startup for consoles */
   if (shader_info.num == 1 && !scale.valid)
      return;

   if (!gl->has_fbo)
   {
      FUNC0("[GL]: Failed to locate FBO functions. Won't be able to use render-to-texture.\n");
      return;
   }

   chain->fbo_pass = shader_info.num - 1;
   if (scale_last.valid)
      chain->fbo_pass++;

   if (!scale.valid)
   {
      scale.scale_x = 1.0f;
      scale.scale_y = 1.0f;
      scale.type_x  = scale.type_y = RARCH_SCALE_INPUT;
      scale.valid   = true;
   }

   chain->fbo_scale[0] = scale;

   for (i = 1; i < chain->fbo_pass; i++)
   {
      scaler.idx   = i + 1;
      scaler.scale = &chain->fbo_scale[i];

      FUNC7(gl, &scaler);

      if (!chain->fbo_scale[i].valid)
      {
         chain->fbo_scale[i].scale_x = chain->fbo_scale[i].scale_y = 1.0f;
         chain->fbo_scale[i].type_x  = chain->fbo_scale[i].type_y  =
            RARCH_SCALE_INPUT;
         chain->fbo_scale[i].valid   = true;
      }
   }

   FUNC5(gl,
         chain, fbo_width, fbo_height, width, height);

   for (i = 0; i < chain->fbo_pass; i++)
   {
      gl->fbo_rect[i].width  = FUNC9(gl->fbo_rect[i].img_width);
      gl->fbo_rect[i].height = FUNC9(gl->fbo_rect[i].img_height);
      FUNC1("[GL]: Creating FBO %d @ %ux%u\n", i,
            gl->fbo_rect[i].width, gl->fbo_rect[i].height);
   }

   gl->fbo_feedback_enable = gl->shader->get_feedback_pass(gl->shader_data,
         &gl->fbo_feedback_pass);

   if (gl->fbo_feedback_enable && gl->fbo_feedback_pass
         < (unsigned)chain->fbo_pass)
   {
      FUNC1("[GL]: Creating feedback FBO %d @ %ux%u\n", i,
            gl->fbo_rect[gl->fbo_feedback_pass].width,
            gl->fbo_rect[gl->fbo_feedback_pass].height);
   }
   else if (gl->fbo_feedback_enable)
   {
      FUNC2("[GL]: Tried to create feedback FBO of pass #%u, but there are only %d FBO passes. Will use input texture as feedback texture.\n",
              gl->fbo_feedback_pass, chain->fbo_pass);
      gl->fbo_feedback_enable = false;
   }

   FUNC4(gl, chain);
   if (!gl || !FUNC3(gl, chain))
   {
      FUNC8(chain->fbo_pass, chain->fbo_texture);
      FUNC0("[GL]: Failed to create FBO targets. Will continue without FBO.\n");
      return;
   }

   gl->fbo_inited = true;
}