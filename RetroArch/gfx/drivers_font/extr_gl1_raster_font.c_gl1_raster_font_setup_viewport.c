
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tex; } ;
typedef TYPE_1__ gl1_raster_t ;


 int GL_BLEND ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int GL_TEXTURE_2D ;
 int glBindTexture (int ,int ) ;
 int glBlendFunc (int ,int ) ;
 int glEnable (int ) ;
 int video_driver_set_viewport (unsigned int,unsigned int,int,int) ;

__attribute__((used)) static void gl1_raster_font_setup_viewport(unsigned width, unsigned height,
      gl1_raster_t *font, bool full_screen)
{
   video_driver_set_viewport(width, height, full_screen, 0);

   glEnable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

   glEnable(GL_TEXTURE_2D);
   glBindTexture(GL_TEXTURE_2D, font->tex);
}
