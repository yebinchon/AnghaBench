
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct video_coords {int vertices; float* color; int * lut_tex_coord; int * tex_coord; int * vertex; } ;
typedef int stripes_handle_t ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_5__ {unsigned int width; unsigned int height; TYPE_1__ pipeline; int prim_type; int texture; int * matrix_data; struct video_coords* coords; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ menu_display_ctx_draw_t ;


 int HSLToRGB (double,double,double,float*) ;
 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;
 int menu_display_blend_begin (int *) ;
 int menu_display_blend_end (int *) ;
 int menu_display_draw (TYPE_2__*,int *) ;
 int menu_display_white_texture ;

__attribute__((used)) static void stripes_draw_bg(
      stripes_handle_t *stripes,
      video_frame_info_t *video_info,
      unsigned width,
      unsigned height)
{
   menu_display_ctx_draw_t draw;
   struct video_coords coords;

   float rgb[3];
   HSLToRGB(0.0,0.5,0.5, &rgb[0]) ;
   float color[16] = {
      rgb[0], rgb[1], rgb[2], 1,
      rgb[0], rgb[1], rgb[2], 1,
      rgb[0], rgb[1], rgb[2], 1,
      rgb[0], rgb[1], rgb[2], 1,
   };

   coords.vertices = 4;
   coords.vertex = ((void*)0);
   coords.tex_coord = ((void*)0);
   coords.lut_tex_coord = ((void*)0);
   coords.color = &color[0];

   draw.x = 0;
   draw.y = 0;
   draw.width = width;
   draw.height = height;
   draw.coords = &coords;
   draw.matrix_data = ((void*)0);
   draw.texture = menu_display_white_texture;
   draw.prim_type = MENU_DISPLAY_PRIM_TRIANGLESTRIP;
   draw.pipeline.id = 0;

   menu_display_blend_begin(video_info);
   menu_display_draw(&draw, video_info);
   menu_display_blend_end(video_info);
}
