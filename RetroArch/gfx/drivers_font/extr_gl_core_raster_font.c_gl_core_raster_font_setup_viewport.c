
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* gl; } ;
typedef TYPE_3__ gl_core_raster_t ;
struct TYPE_5__ {int font; } ;
struct TYPE_6__ {TYPE_1__ pipelines; } ;


 int GL_BLEND ;
 int GL_FUNC_ADD ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int glBlendEquation (int ) ;
 int glBlendFunc (int ,int ) ;
 int glEnable (int ) ;
 int glUseProgram (int ) ;
 int video_driver_set_viewport (unsigned int,unsigned int,int,int) ;

__attribute__((used)) static void gl_core_raster_font_setup_viewport(unsigned width, unsigned height,
      gl_core_raster_t *font, bool full_screen)
{
   video_driver_set_viewport(width, height, full_screen, 0);

   glEnable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   glBlendEquation(GL_FUNC_ADD);
   glUseProgram(font->gl->pipelines.font);
}
