
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int width; unsigned int height; int fullscreen; } ;
typedef TYPE_1__ gfx_ctx_mode_t ;


 int video_context_driver_set_video_mode (TYPE_1__*) ;

__attribute__((used)) static void gl1_set_video_mode(void *data, unsigned width, unsigned height,
      bool fullscreen)
{
   gfx_ctx_mode_t mode;

   mode.width = width;
   mode.height = height;
   mode.fullscreen = fullscreen;

   video_context_driver_set_video_mode(&mode);
}
