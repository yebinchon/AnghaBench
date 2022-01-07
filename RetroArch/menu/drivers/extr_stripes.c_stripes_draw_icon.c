
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ xmb_shadows_enable; } ;
typedef TYPE_2__ video_frame_info_t ;
struct video_coords {int vertices; float const* color; int * lut_tex_coord; int * tex_coord; int * vertex; } ;
struct TYPE_7__ {scalar_t__ id; } ;
struct TYPE_9__ {int width; int height; float rotation; float scale_factor; uintptr_t texture; float x; unsigned int y; TYPE_1__ pipeline; int prim_type; int * matrix_data; struct video_coords* coords; } ;
typedef TYPE_3__ menu_display_ctx_draw_t ;
typedef int math_matrix_4x4 ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;
 int menu_display_draw (TYPE_3__*,TYPE_2__*) ;
 int menu_display_set_alpha (float const*,float) ;
 float const* stripes_coord_shadow ;

__attribute__((used)) static void stripes_draw_icon(
      video_frame_info_t *video_info,
      int icon_size,
      math_matrix_4x4 *mymat,
      uintptr_t texture,
      float x,
      float y,
      unsigned width,
      unsigned height,
      float alpha,
      float rotation,
      float scale_factor,
      float *color,
      float shadow_offset)
{
   menu_display_ctx_draw_t draw;
   struct video_coords coords;

   if (
         (x < (-icon_size / 2.0f)) ||
         (x > width) ||
         (y < (icon_size / 2.0f)) ||
         (y > height + icon_size)
      )
      return;

   coords.vertices = 4;
   coords.vertex = ((void*)0);
   coords.tex_coord = ((void*)0);
   coords.lut_tex_coord = ((void*)0);

   draw.width = icon_size;
   draw.height = icon_size;
   draw.rotation = rotation;
   draw.scale_factor = scale_factor;




   draw.coords = &coords;
   draw.matrix_data = mymat;
   draw.texture = texture;
   draw.prim_type = MENU_DISPLAY_PRIM_TRIANGLESTRIP;
   draw.pipeline.id = 0;

   if (video_info->xmb_shadows_enable)
   {
      menu_display_set_alpha(stripes_coord_shadow, color[3] * 0.35f);

      coords.color = stripes_coord_shadow;
      draw.x = x + shadow_offset;
      draw.y = height - y - shadow_offset;
      menu_display_draw(&draw, video_info);
   }

   coords.color = (const float*)color;
   draw.x = x;
   draw.y = height - y;
   menu_display_draw(&draw, video_info);
}
