
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; } ;
typedef TYPE_1__ video_frame_info_t ;


 int GL_SCISSOR_TEST ;
 int glEnable (int ) ;
 int glScissor (int,int,unsigned int,unsigned int) ;

__attribute__((used)) static void menu_display_gl1_scissor_begin(video_frame_info_t *video_info, int x, int y,
      unsigned width, unsigned height)
{
   glScissor(x, video_info->height - y - height, width, height);
   glEnable(GL_SCISSOR_TEST);
}
