
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int height; int width; } ;
typedef TYPE_2__ video_frame_info_t ;
struct TYPE_7__ {int selection_border; int selection; } ;
struct TYPE_9__ {TYPE_1__ theme_dynamic; } ;
typedef TYPE_3__ ozone_handle_t ;


 int menu_display_draw_quad (TYPE_2__*,int,int,int,unsigned int,int ,int ,int ) ;
 int menu_display_set_alpha (int ,float) ;

__attribute__((used)) static void ozone_draw_cursor_fallback(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      int x_offset,
      unsigned width, unsigned height,
      size_t y, float alpha)
{
   menu_display_set_alpha(ozone->theme_dynamic.selection_border, alpha);
   menu_display_set_alpha(ozone->theme_dynamic.selection, alpha);


   menu_display_draw_quad(video_info, x_offset, (int)y, width, height - 5, video_info->width, video_info->height, ozone->theme_dynamic.selection);




   menu_display_draw_quad(video_info, x_offset - 3, (int)(y - 3), width + 6, 3, video_info->width, video_info->height, ozone->theme_dynamic.selection_border);


   menu_display_draw_quad(video_info, x_offset - 3, (int)(y + height - 5), width + 6, 3, video_info->width, video_info->height, ozone->theme_dynamic.selection_border);


   menu_display_draw_quad(video_info, (int)(x_offset - 3), (int)y, 3, height - 5, video_info->width, video_info->height, ozone->theme_dynamic.selection_border);


   menu_display_draw_quad(video_info, x_offset + width, (int)y, 3, height - 5, video_info->width, video_info->height, ozone->theme_dynamic.selection_border);
}
