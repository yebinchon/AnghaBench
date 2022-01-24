#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  image; } ;
struct TYPE_15__ {TYPE_8__ surface; } ;
struct TYPE_22__ {int /*<<< orphan*/  v; } ;
struct TYPE_21__ {int /*<<< orphan*/  v; } ;
struct TYPE_18__ {int /*<<< orphan*/  image; } ;
struct TYPE_19__ {TYPE_3__ surface; } ;
struct TYPE_20__ {int /*<<< orphan*/  v; TYPE_4__ texture; } ;
struct TYPE_16__ {int /*<<< orphan*/  image; } ;
struct TYPE_17__ {TYPE_1__ surface; } ;
struct TYPE_24__ {int /*<<< orphan*/  drc_scan_buffer; int /*<<< orphan*/  tv_scan_buffer; int /*<<< orphan*/  output_ring_buffer; int /*<<< orphan*/  input_ring_buffer; int /*<<< orphan*/  ubo_mvp; int /*<<< orphan*/  ubo_tex; int /*<<< orphan*/  ubo_vp; TYPE_13__ color_buffer; int /*<<< orphan*/  menu_shader_ubo; int /*<<< orphan*/  menu_shader_vbo; TYPE_7__ vertex_cache_tex; TYPE_6__ vertex_cache; TYPE_5__ menu; int /*<<< orphan*/  v; TYPE_2__ texture; int /*<<< orphan*/  cmd_buffer; int /*<<< orphan*/  ctx_state; } ;
typedef  TYPE_9__ wiiu_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_13__*,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  GX2_DISABLE ; 
 int /*<<< orphan*/  GX2_SCAN_TARGET_DRC ; 
 int /*<<< orphan*/  GX2_SCAN_TARGET_TV ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bokeh_shader ; 
 int /*<<< orphan*/  frame_shader ; 
 int /*<<< orphan*/  FUNC13 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_9__*) ; 
 int /*<<< orphan*/  ribbon_shader ; 
 int /*<<< orphan*/  ribbon_simple_shader ; 
 int /*<<< orphan*/  snow_shader ; 
 int /*<<< orphan*/  snow_simple_shader ; 
 int /*<<< orphan*/  snowflake_shader ; 
 int /*<<< orphan*/  sprite_shader ; 
 int /*<<< orphan*/  tex_shader ; 
 int /*<<< orphan*/  FUNC15 (TYPE_9__*) ; 

__attribute__((used)) static void FUNC16(void *data)
{
   wiiu_video_t *wiiu = (wiiu_video_t *) data;

   if (!wiiu)
      return;

   /* clear leftover image */
   FUNC0(&wiiu->color_buffer, 0.0f, 0.0f, 0.0f, 1.0f);
   FUNC1(&wiiu->color_buffer, GX2_SCAN_TARGET_DRC);
   FUNC1(&wiiu->color_buffer, GX2_SCAN_TARGET_TV);

   FUNC8();
   FUNC4();
   FUNC3();
   FUNC9();
   FUNC7();

   FUNC6(GX2_DISABLE);
   FUNC5(GX2_DISABLE);

   FUNC2(&frame_shader);
   FUNC2(&tex_shader);
   FUNC2(&sprite_shader);
   FUNC2(&ribbon_simple_shader);
   FUNC2(&ribbon_shader);
   FUNC2(&bokeh_shader);
   FUNC2(&snow_shader);
   FUNC2(&snow_simple_shader);
   FUNC2(&snowflake_shader);

   FUNC15(wiiu);

#ifdef HAVE_OVERLAY
   gx2_free_overlay(wiiu);
#endif

   FUNC11(wiiu->ctx_state);
   FUNC11(wiiu->cmd_buffer);
   FUNC11(wiiu->texture.surface.image);
   FUNC11(wiiu->menu.texture.surface.image);
   FUNC11(wiiu->v);
   FUNC11(wiiu->menu.v);
   FUNC11(wiiu->vertex_cache.v);
   FUNC11(wiiu->vertex_cache_tex.v);
   FUNC11(wiiu->menu_shader_vbo);
   FUNC11(wiiu->menu_shader_ubo);

   FUNC10(wiiu->color_buffer.surface.image);
   FUNC10(wiiu->ubo_vp);
   FUNC10(wiiu->ubo_tex);
   FUNC10(wiiu->ubo_mvp);
   FUNC10(wiiu->input_ring_buffer);
   FUNC10(wiiu->output_ring_buffer);

   FUNC12(wiiu->tv_scan_buffer);
   FUNC12(wiiu->drc_scan_buffer);

   FUNC13(wiiu);
}