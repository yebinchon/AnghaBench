
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int normal_color; } ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {TYPE_2__ colors; TYPE_1__ pointer; } ;
typedef TYPE_3__ rgui_t ;
struct TYPE_9__ {scalar_t__ data; } ;


 int menu_display_get_fb_size (unsigned int*,unsigned int*,size_t*) ;
 int rgui_color_rect (scalar_t__,unsigned int,unsigned int,scalar_t__,scalar_t__,int,int,int ) ;
 TYPE_4__ rgui_frame_buf ;

__attribute__((used)) static void rgui_blit_cursor(rgui_t *rgui)
{
   size_t fb_pitch;
   unsigned fb_width, fb_height;

   menu_display_get_fb_size(&fb_width, &fb_height,
         &fb_pitch);

   if (rgui_frame_buf.data)
   {
      rgui_color_rect(rgui_frame_buf.data, fb_width, fb_height, rgui->pointer.x, rgui->pointer.y - 5, 1, 11, rgui->colors.normal_color);
      rgui_color_rect(rgui_frame_buf.data, fb_width, fb_height, rgui->pointer.x - 5, rgui->pointer.y, 11, 1, rgui->colors.normal_color);
   }
}
