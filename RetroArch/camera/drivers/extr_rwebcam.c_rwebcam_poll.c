
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_camera_frame_raw_framebuffer_t ;
typedef int retro_camera_frame_opengl_texture_t ;


 int RWebCamPoll (void*,int ,int ) ;

__attribute__((used)) static bool rwebcam_poll(void *data,
      retro_camera_frame_raw_framebuffer_t frame_raw_cb,
      retro_camera_frame_opengl_texture_t frame_gl_cb)
{
   return RWebCamPoll(data, frame_raw_cb, frame_gl_cb);
}
