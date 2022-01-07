
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_23__ {int nearest; int linear; int mipmap_linear; } ;
struct vk_texture {int default_smooth; int mipmap; } ;
struct TYPE_22__ {int blend; int * pipelines; struct vk_texture blank_texture; } ;
struct TYPE_18__ {int dirty; } ;
struct TYPE_25__ {TYPE_6__ samplers; TYPE_5__ display; TYPE_2__* chain; int context; TYPE_1__ tracker; } ;
typedef TYPE_8__ vk_t ;
struct TYPE_26__ {scalar_t__ userdata; } ;
typedef TYPE_9__ video_frame_info_t ;
struct TYPE_20__ {int a; int b; int g; int r; } ;
struct vk_vertex {float y; TYPE_3__ color; int tex_y; int tex_x; int x; } ;
struct vk_draw_triangles {int uniform_size; unsigned int vertices; struct vk_buffer_range* vbo; int uniform; int sampler; struct vk_texture* texture; int pipeline; } ;
struct vk_buffer_range {scalar_t__ data; } ;
struct TYPE_21__ {int id; int backend_data_size; int backend_data; } ;
struct TYPE_17__ {TYPE_7__* coords; int matrix_data; int prim_type; TYPE_4__ pipeline; scalar_t__ texture; } ;
typedef TYPE_10__ menu_display_ctx_draw_t ;
typedef int math_matrix_4x4 ;
struct TYPE_24__ {float* vertex; float* tex_coord; float* color; int vertices; void* lut_tex_coord; } ;
struct TYPE_19__ {int vbo; } ;







 int VK_NULL_HANDLE ;
 int VULKAN_DIRTY_DYNAMIC_BIT ;
 float* menu_display_vk_get_default_color () ;
 int menu_display_vk_get_default_mvp (TYPE_9__*) ;
 void* menu_display_vk_get_default_tex_coords () ;
 float* menu_display_vk_get_default_vertices () ;
 int menu_display_vk_viewport (TYPE_10__*,TYPE_9__*) ;
 size_t to_display_pipeline (int ,int ) ;
 size_t to_menu_pipeline (int ,int) ;
 int vulkan_buffer_chain_alloc (int ,int *,int,struct vk_buffer_range*) ;
 int vulkan_draw_triangles (TYPE_8__*,struct vk_draw_triangles*) ;

__attribute__((used)) static void menu_display_vk_draw(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   unsigned i;
   struct vk_buffer_range range;
   struct vk_texture *texture = ((void*)0);
   const float *vertex = ((void*)0);
   const float *tex_coord = ((void*)0);
   const float *color = ((void*)0);
   struct vk_vertex *pv = ((void*)0);
   vk_t *vk = (vk_t*)video_info->userdata;

   if (!vk || !draw)
      return;

   texture = (struct vk_texture*)draw->texture;
   vertex = draw->coords->vertex;
   tex_coord = draw->coords->tex_coord;
   color = draw->coords->color;

   if (!vertex)
      vertex = menu_display_vk_get_default_vertices();
   if (!tex_coord)
      tex_coord = menu_display_vk_get_default_tex_coords();
   if (!draw->coords->lut_tex_coord)
      draw->coords->lut_tex_coord = menu_display_vk_get_default_tex_coords();
   if (!texture)
      texture = &vk->display.blank_texture;
   if (!color)
      color = menu_display_vk_get_default_color();

   menu_display_vk_viewport(draw, video_info);

   vk->tracker.dirty |= VULKAN_DIRTY_DYNAMIC_BIT;



   if (!vulkan_buffer_chain_alloc(vk->context, &vk->chain->vbo,
         draw->coords->vertices * sizeof(struct vk_vertex), &range))
      return;

   pv = (struct vk_vertex*)range.data;
   for (i = 0; i < draw->coords->vertices; i++, pv++)
   {
      pv->x = *vertex++;

      pv->y = 1.0f - (*vertex++);
      pv->tex_x = *tex_coord++;
      pv->tex_y = *tex_coord++;
      pv->color.r = *color++;
      pv->color.g = *color++;
      pv->color.b = *color++;
      pv->color.a = *color++;
   }

   switch (draw->pipeline.id)
   {
      default:
      {
         struct vk_draw_triangles call;

         call.pipeline = vk->display.pipelines[
               to_display_pipeline(draw->prim_type, vk->display.blend)];
         call.texture = texture;
         call.sampler = texture->mipmap ?
            vk->samplers.mipmap_linear :
            (texture->default_smooth ? vk->samplers.linear
             : vk->samplers.nearest);
         call.uniform = draw->matrix_data
            ? draw->matrix_data : menu_display_vk_get_default_mvp(video_info);
         call.uniform_size = sizeof(math_matrix_4x4);
         call.vbo = &range;
         call.vertices = draw->coords->vertices;

         vulkan_draw_triangles(vk, &call);
         break;
      }
   }
}
