
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct video_coords {unsigned int vertices; float const* vertex; float const* tex_coord; float const* lut_tex_coord; float const* color; } ;
struct TYPE_4__ {float* vertex; float* tex_coord; float scale_factor; float rotation; int * matrix_data; scalar_t__ texture; scalar_t__ color; struct video_coords* coords; scalar_t__ vertex_count; } ;
typedef TYPE_1__ menu_display_ctx_draw_t ;
typedef int math_matrix_4x4 ;
struct TYPE_5__ {float* (* get_default_vertices ) () ;float* (* get_default_tex_coords ) () ;scalar_t__ (* get_default_mvp ) (int *) ;} ;


 TYPE_3__* menu_disp ;
 int menu_display_set_alpha (scalar_t__,float) ;
 scalar_t__ menu_display_white_texture ;
 float* stub1 () ;
 float* stub2 () ;
 scalar_t__ stub3 (int *) ;

void menu_display_draw_bg(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info, bool add_opacity_to_wallpaper,
      float override_opacity)
{
   static struct video_coords coords;
   const float *new_vertex = ((void*)0);
   const float *new_tex_coord = ((void*)0);
   if (!menu_disp || !draw)
      return;

   new_vertex = draw->vertex;
   new_tex_coord = draw->tex_coord;

   if (!new_vertex)
      new_vertex = menu_disp->get_default_vertices();
   if (!new_tex_coord)
      new_tex_coord = menu_disp->get_default_tex_coords();

   coords.vertices = (unsigned)draw->vertex_count;
   coords.vertex = new_vertex;
   coords.tex_coord = new_tex_coord;
   coords.lut_tex_coord = new_tex_coord;
   coords.color = (const float*)draw->color;

   draw->coords = &coords;
   draw->scale_factor = 1.0f;
   draw->rotation = 0.0f;

   if (draw->texture)
      add_opacity_to_wallpaper = 1;

   if (add_opacity_to_wallpaper)
      menu_display_set_alpha(draw->color, override_opacity);

   if (!draw->texture)
      draw->texture = menu_display_white_texture;

   if (menu_disp && menu_disp->get_default_mvp)
      draw->matrix_data = (math_matrix_4x4*)menu_disp->get_default_mvp(video_info);
}
