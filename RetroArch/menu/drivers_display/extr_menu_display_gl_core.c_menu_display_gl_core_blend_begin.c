
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ userdata; } ;
typedef TYPE_2__ video_frame_info_t ;
struct TYPE_5__ {int alpha_blend; } ;
struct TYPE_7__ {TYPE_1__ pipelines; } ;
typedef TYPE_3__ gl_core_t ;


 int GL_BLEND ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int glBlendFunc (int ,int ) ;
 int glEnable (int ) ;
 int glUseProgram (int ) ;

__attribute__((used)) static void menu_display_gl_core_blend_begin(video_frame_info_t *video_info)
{
   gl_core_t *gl = (gl_core_t*)video_info->userdata;

   glEnable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   glUseProgram(gl->pipelines.alpha_blend);
}
