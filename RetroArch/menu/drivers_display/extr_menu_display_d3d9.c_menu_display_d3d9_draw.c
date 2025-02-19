
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {double width; double height; scalar_t__ userdata; } ;
typedef TYPE_4__ video_frame_info_t ;
struct TYPE_13__ {scalar_t__ id; } ;
struct TYPE_17__ {double width; double height; double x; double y; scalar_t__ prim_type; TYPE_3__* coords; scalar_t__ texture; scalar_t__ matrix_data; TYPE_1__ pipeline; } ;
typedef TYPE_5__ menu_display_ctx_draw_t ;
typedef int math_matrix_4x4 ;
struct TYPE_14__ {unsigned int offset; scalar_t__ buffer; scalar_t__ size; } ;
struct TYPE_18__ {TYPE_2__ menu_display; int dev; int mvp_transposed; } ;
typedef TYPE_6__ d3d9_video_t ;
struct TYPE_19__ {float z; int color; int v; int u; int y; int x; } ;
typedef TYPE_7__ Vertex ;
struct TYPE_15__ {unsigned int vertices; float* vertex; float* tex_coord; float* color; } ;
typedef int LPDIRECT3DVERTEXBUFFER9 ;
typedef int LPDIRECT3DDEVICE9 ;
typedef int D3DPRIMITIVETYPE ;


 int D3DCOLOR_ARGB (int,int,int,int) ;
 scalar_t__ MENU_DISPLAY_PRIM_TRIANGLESTRIP ;
 int d3d9_draw_primitive (int ,int ,unsigned int,int) ;
 int d3d9_set_mvp (int ,int *) ;
 scalar_t__ d3d9_vertex_buffer_lock (int ) ;
 int d3d9_vertex_buffer_unlock (int ) ;
 int d3d_matrix_transpose (int *,int *) ;
 int matrix_4x4_multiply (int ,int ,int ) ;
 int matrix_4x4_scale (int ,double,double,int ) ;
 int matrix_4x4_translate (int ,double,double,int ) ;
 int menu_display_d3d9_bind_texture (TYPE_5__*,TYPE_6__*) ;
 scalar_t__ menu_display_d3d9_get_default_mvp (TYPE_4__*) ;
 float* menu_display_d3d9_get_default_tex_coords () ;
 float* menu_display_d3d9_get_default_vertices () ;
 scalar_t__ menu_display_prim_to_d3d9_enum (scalar_t__) ;

__attribute__((used)) static void menu_display_d3d9_draw(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   unsigned i;
   math_matrix_4x4 mop, m1, m2;
   LPDIRECT3DDEVICE9 dev;
   d3d9_video_t *d3d = (d3d9_video_t*)video_info->userdata;
   Vertex * pv = ((void*)0);
   const float *vertex = ((void*)0);
   const float *tex_coord = ((void*)0);
   const float *color = ((void*)0);

   if (!d3d || !draw || draw->pipeline.id)
      return;

   dev = d3d->dev;

   if((d3d->menu_display.offset + draw->coords->vertices )
         > (unsigned)d3d->menu_display.size)
      return;

   pv = (Vertex*)
      d3d9_vertex_buffer_lock((LPDIRECT3DVERTEXBUFFER9)
            d3d->menu_display.buffer);

   if (!pv)
      return;

   pv += d3d->menu_display.offset;
   vertex = draw->coords->vertex;
   tex_coord = draw->coords->tex_coord;
   color = draw->coords->color;

   if (!vertex)
      vertex = menu_display_d3d9_get_default_vertices();
   if (!tex_coord)
      tex_coord = menu_display_d3d9_get_default_tex_coords();

   for (i = 0; i < draw->coords->vertices; i++)
   {
      int colors[4];

      colors[0] = *color++ * 0xFF;
      colors[1] = *color++ * 0xFF;
      colors[2] = *color++ * 0xFF;
      colors[3] = *color++ * 0xFF;

      pv[i].x = *vertex++;
      pv[i].y = *vertex++;
      pv[i].z = 0.5f;
      pv[i].u = *tex_coord++;
      pv[i].v = *tex_coord++;

      pv[i].color =
         D3DCOLOR_ARGB(
               colors[3],
               colors[0],
               colors[1],
               colors[2]
               );
   }
   d3d9_vertex_buffer_unlock((LPDIRECT3DVERTEXBUFFER9)
         d3d->menu_display.buffer);

   if(!draw->matrix_data)
      draw->matrix_data = menu_display_d3d9_get_default_mvp(video_info);


   matrix_4x4_scale(m1, 2.0, 2.0, 0);
   matrix_4x4_translate(mop, -1.0, -1.0, 0);
   matrix_4x4_multiply(m2, mop, m1);
   matrix_4x4_multiply(m1,
         *((math_matrix_4x4*)draw->matrix_data), m2);
   matrix_4x4_scale(mop,
         (draw->width / 2.0) / video_info->width,
         (draw->height / 2.0) / video_info->height, 0);
   matrix_4x4_multiply(m2, mop, m1);
   matrix_4x4_translate(mop,
         (draw->x + (draw->width / 2.0)) / video_info->width,
         (draw->y + (draw->height / 2.0)) / video_info->height,
         0);
   matrix_4x4_multiply(m1, mop, m2);
   matrix_4x4_multiply(m2, d3d->mvp_transposed, m1);
   d3d_matrix_transpose(&m1, &m2);

   d3d9_set_mvp(d3d->dev, &m1);

   if (draw && draw->texture)
      menu_display_d3d9_bind_texture(draw, d3d);

   d3d9_draw_primitive(dev,
         (D3DPRIMITIVETYPE)menu_display_prim_to_d3d9_enum(draw->prim_type),
         d3d->menu_display.offset,
         draw->coords->vertices -
         ((draw->prim_type == MENU_DISPLAY_PRIM_TRIANGLESTRIP)
          ? 2 : 0));

   d3d->menu_display.offset += draw->coords->vertices;
}
