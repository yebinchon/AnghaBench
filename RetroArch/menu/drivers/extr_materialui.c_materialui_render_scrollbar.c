
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_6__ {int scrollbar; } ;
struct TYPE_5__ {int height; int width; int y; int x; int active; } ;
struct TYPE_7__ {TYPE_2__ colors; TYPE_1__ scrollbar; } ;
typedef TYPE_3__ materialui_handle_t ;


 int menu_display_draw_quad (int *,int ,int ,int ,int ,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void materialui_render_scrollbar(
      materialui_handle_t *mui,
      video_frame_info_t *video_info,
      unsigned width, unsigned height)
{

   if (!mui->scrollbar.active)
      return;


   menu_display_draw_quad(
         video_info,
         mui->scrollbar.x,
         mui->scrollbar.y,
         mui->scrollbar.width,
         mui->scrollbar.height,
         width, height,
         mui->colors.scrollbar);
}
