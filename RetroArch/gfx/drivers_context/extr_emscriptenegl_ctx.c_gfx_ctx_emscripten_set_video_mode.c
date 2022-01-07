
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;


 int g_egl_inited ;

__attribute__((used)) static bool gfx_ctx_emscripten_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   (void)data;

   if (g_egl_inited)
      return 0;

   g_egl_inited = 1;
   return 1;
}
