
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_25__ {int height; int width; } ;
struct TYPE_26__ {TYPE_5__ surface; } ;
struct TYPE_27__ {TYPE_14__* menu_shader_ubo; TYPE_6__ color_buffer; TYPE_14__* v; TYPE_14__* menu_shader_vbo; } ;
typedef TYPE_7__ wiiu_video_t ;
struct TYPE_28__ {scalar_t__ userdata; } ;
typedef TYPE_8__ video_frame_info_t ;
struct TYPE_22__ {int vertices; int vertex; } ;
struct TYPE_29__ {TYPE_2__ coords; } ;
typedef TYPE_9__ video_coord_array_t ;
struct TYPE_21__ {int id; } ;
struct TYPE_19__ {TYPE_3__* coords; TYPE_1__ pipeline; } ;
typedef TYPE_10__ menu_display_ctx_draw_t ;
struct TYPE_24__ {int height; int width; } ;
struct TYPE_23__ {int vertices; TYPE_14__* vertex; } ;
struct TYPE_20__ {float time; TYPE_4__ OutputSize; int mvp; } ;


 int GX2Invalidate (int ,TYPE_14__*,int) ;
 int GX2SetAttribBuffer (int ,int,int,TYPE_14__*) ;
 int GX2SetBlendControl (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int GX2SetPixelUniformBlock (int,int,TYPE_14__*) ;
 int GX2SetVertexUniformBlock (int,int,TYPE_14__*) ;
 int GX2_BLEND_COMBINE_MODE_ADD ;
 int GX2_BLEND_MODE_ONE ;
 int GX2_BLEND_MODE_SRC_ALPHA ;
 int GX2_DISABLE ;
 int GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER ;
 int GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK ;
 int GX2_RENDER_TARGET_0 ;
 int GX2_UNIFORM_BLOCK_ALIGNMENT ;
 int GX2_VERTEX_BUFFER_ALIGNMENT ;
 void* MEM2_alloc (int,int ) ;






 int matrix_4x4_ortho (int ,int ,int,int,int ,int,int) ;
 int memcpy (TYPE_14__*,int ,int) ;
 TYPE_9__* menu_display_get_coords_array () ;

__attribute__((used)) static void menu_display_wiiu_draw_pipeline(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   video_coord_array_t *ca = ((void*)0);
   wiiu_video_t *wiiu = (wiiu_video_t*)video_info->userdata;

   if (!wiiu || !draw)
      return;

   switch(draw->pipeline.id)
   {
      case 133:
      case 132:
         ca = menu_display_get_coords_array();
         if(!wiiu->menu_shader_vbo)
         {
            wiiu->menu_shader_vbo = MEM2_alloc(ca->coords.vertices * 2 * sizeof(float), GX2_VERTEX_BUFFER_ALIGNMENT);
            memcpy(wiiu->menu_shader_vbo, ca->coords.vertex, ca->coords.vertices * 2 * sizeof(float));
            GX2Invalidate(GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER, wiiu->menu_shader_vbo, ca->coords.vertices * 2 * sizeof(float));
         }

         draw->coords->vertex = wiiu->menu_shader_vbo;
         draw->coords->vertices = ca->coords.vertices;
         GX2SetAttribBuffer(0, draw->coords->vertices * 2 * sizeof(float), 2 * sizeof(float), wiiu->menu_shader_vbo);
         GX2SetBlendControl(GX2_RENDER_TARGET_0, GX2_BLEND_MODE_SRC_ALPHA, GX2_BLEND_MODE_ONE,
               GX2_BLEND_COMBINE_MODE_ADD, GX2_DISABLE, 0, 0, 0);

         break;
      case 131:
      case 130:
      case 129:
      case 128:
         GX2SetAttribBuffer(0, 4 * sizeof(*wiiu->v), sizeof(*wiiu->v), wiiu->v);
         break;
      default:
         return;
   }

   if(!wiiu->menu_shader_ubo)
   {
      wiiu->menu_shader_ubo = MEM2_alloc(sizeof(*wiiu->menu_shader_ubo), GX2_UNIFORM_BLOCK_ALIGNMENT);
      matrix_4x4_ortho(wiiu->menu_shader_ubo->mvp, 0, 1, 1, 0, -1, 1);
      wiiu->menu_shader_ubo->OutputSize.width = wiiu->color_buffer.surface.width;
      wiiu->menu_shader_ubo->OutputSize.height = wiiu->color_buffer.surface.height;
      wiiu->menu_shader_ubo->time = 0.0f;
   }
   else
      wiiu->menu_shader_ubo->time += 0.01f;

   GX2Invalidate(GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK, wiiu->menu_shader_ubo, sizeof(*wiiu->menu_shader_ubo));
   GX2SetVertexUniformBlock(1, sizeof(*wiiu->menu_shader_ubo), wiiu->menu_shader_ubo);
   GX2SetPixelUniformBlock(1, sizeof(*wiiu->menu_shader_ubo), wiiu->menu_shader_ubo);
}
