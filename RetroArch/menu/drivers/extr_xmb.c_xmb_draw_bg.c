
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int xmb_handle_t ;
struct TYPE_18__ {int libretro_running; int menu_shader_pipeline; scalar_t__ xmb_color_theme; float menu_wallpaper_opacity; int height; int width; } ;
typedef TYPE_2__ video_frame_info_t ;
struct TYPE_17__ {scalar_t__ id; int active; } ;
struct TYPE_19__ {uintptr_t texture; unsigned int width; unsigned int height; float* color; int vertex_count; TYPE_1__ pipeline; int prim_type; int * tex_coord; int * vertex; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_3__ menu_display_ctx_draw_t ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;
 scalar_t__ VIDEO_SHADER_MENU ;
 scalar_t__ VIDEO_SHADER_MENU_2 ;
 scalar_t__ VIDEO_SHADER_MENU_3 ;
 scalar_t__ VIDEO_SHADER_MENU_4 ;
 scalar_t__ VIDEO_SHADER_MENU_5 ;
 scalar_t__ VIDEO_SHADER_MENU_6 ;





 int XMB_SHADER_PIPELINE_WALLPAPER ;
 scalar_t__ XMB_THEME_WALLPAPER ;
 int menu_display_blend_begin (TYPE_2__*) ;
 int menu_display_blend_end (TYPE_2__*) ;
 int menu_display_draw (TYPE_3__*,TYPE_2__*) ;
 int menu_display_draw_bg (TYPE_3__*,TYPE_2__*,int,float) ;
 int menu_display_draw_gradient (TYPE_3__*,TYPE_2__*) ;
 int menu_display_draw_pipeline (TYPE_3__*,TYPE_2__*) ;
 int menu_display_set_alpha (float*,float) ;
 int menu_display_set_viewport (int ,int ) ;
 void* xmb_gradient_ident (TYPE_2__*) ;
 int xmb_shader_pipeline_active (TYPE_2__*) ;

__attribute__((used)) static void xmb_draw_bg(
      xmb_handle_t *xmb,
      video_frame_info_t *video_info,
      unsigned width,
      unsigned height,
      float alpha,
      uintptr_t texture_id,
      float *coord_black,
      float *coord_white)
{
   menu_display_ctx_draw_t draw;

   bool running = video_info->libretro_running;

   draw.x = 0;
   draw.y = 0;
   draw.texture = texture_id;
   draw.width = width;
   draw.height = height;
   draw.color = &coord_black[0];
   draw.vertex = ((void*)0);
   draw.tex_coord = ((void*)0);
   draw.vertex_count = 4;
   draw.prim_type = MENU_DISPLAY_PRIM_TRIANGLESTRIP;
   draw.pipeline.id = 0;
   draw.pipeline.active = xmb_shader_pipeline_active(video_info);

   menu_display_blend_begin(video_info);
   menu_display_set_viewport(video_info->width, video_info->height);
   {
      uintptr_t texture = draw.texture;

      if (video_info->xmb_color_theme != XMB_THEME_WALLPAPER)
         draw.color = xmb_gradient_ident(video_info);

      if (running)
         menu_display_set_alpha(draw.color, coord_black[3]);
      else
         menu_display_set_alpha(draw.color, coord_white[3]);

      if (video_info->xmb_color_theme != XMB_THEME_WALLPAPER)
         menu_display_draw_gradient(&draw, video_info);

      {
         float override_opacity = video_info->menu_wallpaper_opacity;
         bool add_opacity = 0;

         draw.texture = texture;
         menu_display_set_alpha(draw.color, coord_white[3]);

         if (draw.texture)
            draw.color = &coord_white[0];

         if (running || video_info->xmb_color_theme == XMB_THEME_WALLPAPER)
            add_opacity = 1;

         menu_display_draw_bg(&draw, video_info, add_opacity, override_opacity);
      }
   }

   menu_display_draw(&draw, video_info);
   menu_display_blend_end(video_info);
}
