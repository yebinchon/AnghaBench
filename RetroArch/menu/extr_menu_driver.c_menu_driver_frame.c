
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ menu_is_alive; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_6__ {int (* frame ) (int ,TYPE_1__*) ;} ;


 TYPE_4__* menu_driver_ctx ;
 int menu_userdata ;
 int stub1 (int ,TYPE_1__*) ;

void menu_driver_frame(video_frame_info_t *video_info)
{
   if (video_info->menu_is_alive && menu_driver_ctx->frame)
      menu_driver_ctx->frame(menu_userdata, video_info);
}
