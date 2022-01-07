
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; int buffer_output; int ready; } ;
typedef TYPE_1__ video4linux_t ;
typedef int (* retro_camera_frame_raw_framebuffer_t ) (int ,int,int ,int) ;
typedef int retro_camera_frame_opengl_texture_t ;


 scalar_t__ preprocess_image (void*) ;

__attribute__((used)) static bool v4l_poll(void *data,
      retro_camera_frame_raw_framebuffer_t frame_raw_cb,
      retro_camera_frame_opengl_texture_t frame_gl_cb)
{
   video4linux_t *v4l = (video4linux_t*)data;
   if (!v4l->ready)
      return 0;

   (void)frame_gl_cb;

   if (preprocess_image(data))
   {
      if (frame_raw_cb != ((void*)0))
         frame_raw_cb(v4l->buffer_output, v4l->width,
               v4l->height, v4l->width * 4);
      return 1;
   }

   return 0;
}
