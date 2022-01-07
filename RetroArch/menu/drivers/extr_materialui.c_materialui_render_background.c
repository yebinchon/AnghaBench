
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {float menu_wallpaper_opacity; float menu_framebuffer_opacity; scalar_t__ libretro_running; int height; int width; } ;
typedef TYPE_4__ video_frame_info_t ;
struct TYPE_15__ {int active; int * backend_data; scalar_t__ id; } ;
struct TYPE_19__ {int vertex_count; float* color; scalar_t__ texture; TYPE_1__ pipeline; int * tex_coord; int * vertex; int prim_type; int * matrix_data; int * coords; int height; int width; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_5__ menu_display_ctx_draw_t ;
struct TYPE_17__ {int list_background; } ;
struct TYPE_16__ {scalar_t__ bg; } ;
struct TYPE_20__ {TYPE_3__ colors; TYPE_2__ textures; } ;
typedef TYPE_6__ materialui_handle_t ;
typedef int draw_color ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;
 int memcpy (float*,int ,int) ;
 int menu_display_blend_begin (TYPE_4__*) ;
 int menu_display_blend_end (TYPE_4__*) ;
 int menu_display_draw (TYPE_5__*,TYPE_4__*) ;
 int menu_display_draw_bg (TYPE_5__*,TYPE_4__*,int,float) ;
 scalar_t__ menu_display_white_texture ;

__attribute__((used)) static void materialui_render_background(materialui_handle_t *mui, video_frame_info_t *video_info)
{
   menu_display_ctx_draw_t draw;
   bool add_opacity = 0;
   float opacity_override = 1.0f;
   float draw_color[16] = {
      1.0f, 1.0f, 1.0f, 1.0f,
      1.0f, 1.0f, 1.0f, 1.0f,
      1.0f, 1.0f, 1.0f, 1.0f,
      1.0f, 1.0f, 1.0f, 1.0f
   };


   draw.x = 0;
   draw.y = 0;
   draw.width = video_info->width;
   draw.height = video_info->height;
   draw.coords = ((void*)0);
   draw.matrix_data = ((void*)0);
   draw.prim_type = MENU_DISPLAY_PRIM_TRIANGLESTRIP;
   draw.vertex = ((void*)0);
   draw.tex_coord = ((void*)0);
   draw.vertex_count = 4;
   draw.pipeline.id = 0;
   draw.pipeline.active = 0;
   draw.pipeline.backend_data = ((void*)0);
   draw.color = draw_color;

   if (mui->textures.bg && !video_info->libretro_running)
   {
      draw.texture = mui->textures.bg;



      add_opacity = 1;
      opacity_override = video_info->menu_wallpaper_opacity;
   }
   else
   {
      draw.texture = menu_display_white_texture;


      memcpy(draw_color, mui->colors.list_background, sizeof(draw_color));




      if (video_info->libretro_running)
      {
         add_opacity = 1;
         opacity_override = video_info->menu_framebuffer_opacity;
      }
   }


   menu_display_blend_begin(video_info);
   menu_display_draw_bg(&draw, video_info, add_opacity, opacity_override);
   menu_display_draw(&draw, video_info);
   menu_display_blend_end(video_info);
}
