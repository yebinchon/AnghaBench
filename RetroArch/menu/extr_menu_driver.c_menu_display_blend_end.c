
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_2__ {int (* blend_end ) (int *) ;} ;


 TYPE_1__* menu_disp ;
 int stub1 (int *) ;

void menu_display_blend_end(video_frame_info_t *video_info)
{
   if (menu_disp && menu_disp->blend_end)
      menu_disp->blend_end(video_info);
}
