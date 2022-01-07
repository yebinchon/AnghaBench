
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ userdata; } ;
typedef TYPE_2__ video_frame_info_t ;
struct TYPE_8__ {int shader_data; TYPE_1__* shader; } ;
typedef TYPE_3__ gl_t ;
struct TYPE_6__ {int (* use ) (TYPE_3__*,int ,int ,int) ;} ;


 int GL_BLEND ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int VIDEO_SHADER_STOCK_BLEND ;
 int glBlendFunc (int ,int ) ;
 int glEnable (int ) ;
 int stub1 (TYPE_3__*,int ,int ,int) ;

__attribute__((used)) static void menu_display_gl_blend_begin(video_frame_info_t *video_info)
{
   gl_t *gl = (gl_t*)video_info->userdata;

   glEnable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

   gl->shader->use(gl, gl->shader_data, VIDEO_SHADER_STOCK_BLEND,
         1);
}
