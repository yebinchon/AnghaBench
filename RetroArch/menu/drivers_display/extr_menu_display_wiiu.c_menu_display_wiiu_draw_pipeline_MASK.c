#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_14__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_26__ {TYPE_5__ surface; } ;
struct TYPE_27__ {TYPE_14__* menu_shader_ubo; TYPE_6__ color_buffer; TYPE_14__* v; TYPE_14__* menu_shader_vbo; } ;
typedef  TYPE_7__ wiiu_video_t ;
struct TYPE_28__ {scalar_t__ userdata; } ;
typedef  TYPE_8__ video_frame_info_t ;
struct TYPE_22__ {int vertices; int /*<<< orphan*/  vertex; } ;
struct TYPE_29__ {TYPE_2__ coords; } ;
typedef  TYPE_9__ video_coord_array_t ;
struct TYPE_21__ {int id; } ;
struct TYPE_19__ {TYPE_3__* coords; TYPE_1__ pipeline; } ;
typedef  TYPE_10__ menu_display_ctx_draw_t ;
struct TYPE_24__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_23__ {int vertices; TYPE_14__* vertex; } ;
struct TYPE_20__ {float time; TYPE_4__ OutputSize; int /*<<< orphan*/  mvp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,TYPE_14__*) ; 
 int /*<<< orphan*/  GX2_BLEND_COMBINE_MODE_ADD ; 
 int /*<<< orphan*/  GX2_BLEND_MODE_ONE ; 
 int /*<<< orphan*/  GX2_BLEND_MODE_SRC_ALPHA ; 
 int /*<<< orphan*/  GX2_DISABLE ; 
 int /*<<< orphan*/  GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER ; 
 int /*<<< orphan*/  GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK ; 
 int /*<<< orphan*/  GX2_RENDER_TARGET_0 ; 
 int /*<<< orphan*/  GX2_UNIFORM_BLOCK_ALIGNMENT ; 
 int /*<<< orphan*/  GX2_VERTEX_BUFFER_ALIGNMENT ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
#define  VIDEO_SHADER_MENU 133 
#define  VIDEO_SHADER_MENU_2 132 
#define  VIDEO_SHADER_MENU_3 131 
#define  VIDEO_SHADER_MENU_4 130 
#define  VIDEO_SHADER_MENU_5 129 
#define  VIDEO_SHADER_MENU_6 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_14__*,int /*<<< orphan*/ ,int) ; 
 TYPE_9__* FUNC8 () ; 

__attribute__((used)) static void FUNC9(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   video_coord_array_t *ca        = NULL;
   wiiu_video_t             *wiiu = (wiiu_video_t*)video_info->userdata;

   if (!wiiu || !draw)
      return;

   switch(draw->pipeline.id)
   {
      case VIDEO_SHADER_MENU:
      case VIDEO_SHADER_MENU_2:
         ca = FUNC8();
         if(!wiiu->menu_shader_vbo)
         {
            wiiu->menu_shader_vbo = FUNC5(ca->coords.vertices * 2 * sizeof(float), GX2_VERTEX_BUFFER_ALIGNMENT);
            FUNC7(wiiu->menu_shader_vbo, ca->coords.vertex, ca->coords.vertices * 2 * sizeof(float));
            FUNC0(GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER, wiiu->menu_shader_vbo, ca->coords.vertices * 2 * sizeof(float));
         }

         draw->coords->vertex             = wiiu->menu_shader_vbo;
         draw->coords->vertices           = ca->coords.vertices;
         FUNC1(0, draw->coords->vertices * 2 * sizeof(float), 2 * sizeof(float), wiiu->menu_shader_vbo);
         FUNC2(GX2_RENDER_TARGET_0, GX2_BLEND_MODE_SRC_ALPHA, GX2_BLEND_MODE_ONE,
               GX2_BLEND_COMBINE_MODE_ADD, GX2_DISABLE, 0, 0, 0);

         break;
      case VIDEO_SHADER_MENU_3:
      case VIDEO_SHADER_MENU_4:
      case VIDEO_SHADER_MENU_5:
      case VIDEO_SHADER_MENU_6:
         FUNC1(0, 4 * sizeof(*wiiu->v), sizeof(*wiiu->v), wiiu->v);
         break;
      default:
         return;
   }

   if(!wiiu->menu_shader_ubo)
   {
      wiiu->menu_shader_ubo = FUNC5(sizeof(*wiiu->menu_shader_ubo), GX2_UNIFORM_BLOCK_ALIGNMENT);
      FUNC6(wiiu->menu_shader_ubo->mvp, 0, 1, 1, 0, -1, 1);
      wiiu->menu_shader_ubo->OutputSize.width = wiiu->color_buffer.surface.width;
      wiiu->menu_shader_ubo->OutputSize.height = wiiu->color_buffer.surface.height;
      wiiu->menu_shader_ubo->time = 0.0f;
   }
   else
      wiiu->menu_shader_ubo->time += 0.01f;

   FUNC0(GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK, wiiu->menu_shader_ubo, sizeof(*wiiu->menu_shader_ubo));
   FUNC4(1, sizeof(*wiiu->menu_shader_ubo), wiiu->menu_shader_ubo);
   FUNC3(1, sizeof(*wiiu->menu_shader_ubo), wiiu->menu_shader_ubo);
}