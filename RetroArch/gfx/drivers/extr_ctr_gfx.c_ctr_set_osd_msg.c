
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_2__ {scalar_t__ msg_rendering_enabled; } ;
typedef TYPE_1__ ctr_video_t ;


 int font_driver_render_msg (int *,void*,char const*,void const*) ;

__attribute__((used)) static void ctr_set_osd_msg(void *data,
      video_frame_info_t *video_info,
      const char *msg,
      const void *params, void *font)
{
   ctr_video_t* ctr = (ctr_video_t*)data;

   if (ctr && ctr->msg_rendering_enabled)
      font_driver_render_msg(video_info, font, msg, params);
}
