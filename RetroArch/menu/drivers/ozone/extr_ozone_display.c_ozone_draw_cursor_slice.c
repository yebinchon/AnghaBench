
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int height; int width; } ;
typedef TYPE_3__ video_frame_info_t ;
struct TYPE_11__ {int cursor_border; int cursor_alpha; } ;
struct TYPE_13__ {int * textures; TYPE_2__ theme_dynamic; TYPE_1__* theme; } ;
typedef TYPE_4__ ozone_handle_t ;
struct TYPE_10__ {int * textures; } ;


 size_t OZONE_TEXTURE_CURSOR_BORDER ;
 size_t OZONE_THEME_TEXTURE_CURSOR_NO_BORDER ;
 int menu_display_blend_begin (TYPE_3__*) ;
 int menu_display_blend_end (TYPE_3__*) ;
 int menu_display_draw_texture_slice (TYPE_3__*,int,int,int,int,unsigned int,unsigned int,int ,int ,int ,int,double,int ) ;
 int menu_display_set_alpha (int ,float) ;

__attribute__((used)) static void ozone_draw_cursor_slice(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      int x_offset,
      unsigned width, unsigned height,
      size_t y, float alpha)
{
   menu_display_set_alpha(ozone->theme_dynamic.cursor_alpha, alpha);
   menu_display_set_alpha(ozone->theme_dynamic.cursor_border, alpha);

   menu_display_blend_begin(video_info);


   menu_display_draw_texture_slice(
      video_info,
      x_offset - 14,
      (int)(y + 8),
      80, 80,
      width + 3 + 28 - 4,
      height + 20,
      video_info->width, video_info->height,
      ozone->theme_dynamic.cursor_alpha,
      20, 1.0,
      ozone->theme->textures[OZONE_THEME_TEXTURE_CURSOR_NO_BORDER]
   );


   menu_display_draw_texture_slice(
      video_info,
      x_offset - 14,
      (int)(y + 8),
      80, 80,
      width + 3 + 28 - 4,
      height + 20,
      video_info->width, video_info->height,
      ozone->theme_dynamic.cursor_border,
      20, 1.0,
      ozone->textures[OZONE_TEXTURE_CURSOR_BORDER]
   );

   menu_display_blend_end(video_info);
}
