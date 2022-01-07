
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;


 int GL_SCISSOR_TEST ;
 int glDisable (int ) ;

__attribute__((used)) static void menu_display_gl_core_scissor_end(video_frame_info_t *video_info)
{
   glDisable(GL_SCISSOR_TEST);
}
