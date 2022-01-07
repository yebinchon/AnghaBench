
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef int sdl2_video_t ;


 int RARCH_LOG (char*,char const*) ;
 int sdl2_render_msg (int *,char const*) ;

__attribute__((used)) static void sdl2_poke_set_osd_msg(void *data,
      video_frame_info_t *video_info,
      const char *msg,
      const void *params, void *font)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;
   sdl2_render_msg(vid, msg);
   RARCH_LOG("[SDL2]: OSD MSG: %s\n", msg);
}
