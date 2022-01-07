
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct video_coords {int vertices; float* vertex; float* color; int * lut_tex_coord; int * tex_coord; } ;
struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_6__ {unsigned int width; unsigned int height; float scale_factor; float rotation; TYPE_1__ pipeline; int prim_type; int texture; int * matrix_data; struct video_coords* coords; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ menu_display_ctx_draw_t ;
struct TYPE_7__ {int (* blend_end ) (int *) ;int (* blend_begin ) (int *) ;} ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;
 TYPE_4__* menu_disp ;
 int menu_display_draw (TYPE_2__*,int *) ;
 int menu_display_white_texture ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void menu_display_draw_polygon(
      video_frame_info_t *video_info,
      int x1, int y1,
      int x2, int y2,
      int x3, int y3,
      int x4, int y4,
      unsigned width, unsigned height,
      float *color)
{
   menu_display_ctx_draw_t draw;
   struct video_coords coords;

   float vertex[8];

   vertex[0] = x1 / (float)width;
   vertex[1] = y1 / (float)height;
   vertex[2] = x2 / (float)width;
   vertex[3] = y2 / (float)height;
   vertex[4] = x3 / (float)width;
   vertex[5] = y3 / (float)height;
   vertex[6] = x4 / (float)width;
   vertex[7] = y4 / (float)height;

   coords.vertices = 4;
   coords.vertex = &vertex[0];
   coords.tex_coord = ((void*)0);
   coords.lut_tex_coord = ((void*)0);
   coords.color = color;

   if (menu_disp && menu_disp->blend_begin)
      menu_disp->blend_begin(video_info);

   draw.x = 0;
   draw.y = 0;
   draw.width = width;
   draw.height = height;
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
