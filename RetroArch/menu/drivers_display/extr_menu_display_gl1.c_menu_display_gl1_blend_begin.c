
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;


 int GL_BLEND ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int glBlendFunc (int ,int ) ;
 int glEnable (int ) ;

__attribute__((used)) static void menu_display_gl1_blend_begin(video_frame_info_t *video_info)
{
   glEnable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
}
