
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
typedef TYPE_1__ video_frame_info_t ;


 int GX2SetScissor (int ,int ,int ,int ) ;

__attribute__((used)) static void menu_display_wiiu_scissor_end(video_frame_info_t *video_info)
{
   GX2SetScissor(0, 0, video_info->width, video_info->height);
}
