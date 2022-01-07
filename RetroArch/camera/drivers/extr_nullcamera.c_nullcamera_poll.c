
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_camera_frame_raw_framebuffer_t ;
typedef int retro_camera_frame_opengl_texture_t ;



__attribute__((used)) static bool nullcamera_poll(void *data,
      retro_camera_frame_raw_framebuffer_t frame_raw_cb,
      retro_camera_frame_opengl_texture_t frame_gl_cb)
{
   (void)data;
   (void)frame_raw_cb;
   (void)frame_gl_cb;

   return 1;
}
