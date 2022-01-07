
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct video_coords {int vertices; float const* color; int * lut_tex_coord; int * tex_coord; int * vertex; } ;
struct TYPE_7__ {double rotation; double scale_x; double scale_y; int scale_z; int scale_enable; int * matrix; } ;
typedef TYPE_2__ menu_display_ctx_rotate_draw_t ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_8__ {unsigned int width; unsigned int height; uintptr_t texture; int x; unsigned int y; TYPE_1__ pipeline; int prim_type; int * matrix_data; struct video_coords* coords; } ;
typedef TYPE_3__ menu_display_ctx_draw_t ;
typedef int math_matrix_4x4 ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;
 int menu_display_draw (TYPE_3__*,int *) ;
 int menu_display_rotate_z (TYPE_2__*,int *) ;

void menu_display_draw_texture(
      video_frame_info_t *video_info,
      int x, int y, unsigned w, unsigned h,
      unsigned width, unsigned height,
      float *color, uintptr_t texture)
{
   menu_display_ctx_draw_t draw;
   menu_display_ctx_rotate_draw_t rotate_draw;
   struct video_coords coords;
   math_matrix_4x4 mymat;
   rotate_draw.matrix = &mymat;
   rotate_draw.rotation = 0.0;
   rotate_draw.scale_x = 1.0;
   rotate_draw.scale_y = 1.0;
   rotate_draw.scale_z = 1;
   rotate_draw.scale_enable = 1;
   coords.vertices = 4;
   coords.vertex = ((void*)0);
   coords.tex_coord = ((void*)0);
   coords.lut_tex_coord = ((void*)0);
   draw.width = w;
   draw.height = h;
   draw.coords = &coords;
   draw.matrix_data = &mymat;
   draw.prim_type = MENU_DISPLAY_PRIM_TRIANGLESTRIP;
   draw.pipeline.id = 0;
   coords.color = (const float*)color;

   menu_display_rotate_z(&rotate_draw, video_info);

   draw.texture = texture;
   draw.x = x;
   draw.y = height - y;
   menu_display_draw(&draw, video_info);
}
