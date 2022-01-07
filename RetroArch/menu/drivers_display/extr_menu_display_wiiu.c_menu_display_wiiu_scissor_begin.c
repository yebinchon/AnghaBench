
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
typedef TYPE_1__ video_frame_info_t ;


 int GX2SetScissor (int ,int ,int ,int ) ;
 int MAX (int,int ) ;
 int MIN (unsigned int,int) ;

__attribute__((used)) static void menu_display_wiiu_scissor_begin(video_frame_info_t *video_info, int x, int y,
      unsigned width, unsigned height)
{
   GX2SetScissor(MAX(x, 0), MAX(video_info->height - y - height, 0), MIN(width, video_info->width), MIN(height, video_info->height));
}
