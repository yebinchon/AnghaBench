
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct video_coords {int vertices; float* color; int * lut_tex_coord; int * tex_coord; int * vertex; } ;
struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_6__ {int x; int y; unsigned int width; unsigned int height; float scale_factor; float rotation; TYPE_1__ pipeline; int prim_type; int texture; int * matrix_data; struct video_coords* coords; } ;
typedef TYPE_2__ menu_display_ctx_draw_t ;
struct TYPE_7__ {int (* blend_end ) (int *) ;int (* blend_begin ) (int *) ;} ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;
 TYPE_4__* menu_disp ;
 int menu_display_draw (TYPE_2__*,int *) ;
 int menu_display_white_texture ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void menu_display_draw_quad(
      video_frame_info_t *video_info,
      int x, int y, unsigned w, unsigned h,
      unsigned width, unsigned height,
      float *color)
{
   menu_display_ctx_draw_t draw;
   struct video_coords coords;

   coords.vertices = 4;
   coords.vertex = ((void*)0);
   coords.tex_coord = ((void*)0);
   coords.lut_tex_coord = ((void*)0);
   coords.color = color;

   if (menu_disp && menu_disp->blend_begin)
      menu_disp->blend_begin(video_info);

   draw.x = x;
   draw.y = (int)height - y - (int)h;
   draw.width = w;
   draw.height = h;
   draw.coords = &coords;
   draw.matrix_data = ((void*)0);
   draw.texture = menu_display_white_texture;
   draw.prim_type = MENU_DISPLAY_PRIM_TRIANGLESTRIP;
   draw.pipeline.id = 0;
   draw.scale_factor = 1.0f;
   draw.rotation = 0.0f;

   menu_display_draw(&draw, video_info);

   if (menu_disp && menu_disp->blend_end)
      menu_disp->blend_end(video_info);
}
