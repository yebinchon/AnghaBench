
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
struct font_params {int dummy; } ;


 int font_driver_render_msg (int *,void*,char const*,struct font_params const*) ;

__attribute__((used)) static void network_set_osd_msg(void *data,
      video_frame_info_t *video_info,
      const char *msg,
      const void *params, void *font)
{
   font_driver_render_msg(video_info, font, msg, (const struct font_params*)params);
}
