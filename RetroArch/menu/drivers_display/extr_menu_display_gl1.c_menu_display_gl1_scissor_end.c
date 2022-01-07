
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
typedef TYPE_1__ video_frame_info_t ;


 int GL_SCISSOR_TEST ;
 int glDisable (int ) ;
 int glScissor (int ,int ,int ,int ) ;

__attribute__((used)) static void menu_display_gl1_scissor_end(video_frame_info_t *video_info)
{
   glScissor(0, 0, video_info->width, video_info->height);
   glDisable(GL_SCISSOR_TEST);
}
