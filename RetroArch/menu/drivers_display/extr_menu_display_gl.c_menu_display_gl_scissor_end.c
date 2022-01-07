
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ height; scalar_t__ width; } ;
typedef TYPE_1__ video_frame_info_t ;


 int GL_SCISSOR_TEST ;
 int glDisable (int ) ;
 int glScissor (int ,int ,scalar_t__,scalar_t__) ;
 int scissor_set_rectangle (int ,scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static void menu_display_gl_scissor_end(video_frame_info_t *video_info)
{
   glScissor(0, 0, video_info->width, video_info->height);
   glDisable(GL_SCISSOR_TEST);



}
