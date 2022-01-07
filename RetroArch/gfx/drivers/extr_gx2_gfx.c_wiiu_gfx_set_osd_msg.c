
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ render_msg_enabled; } ;
typedef TYPE_1__ wiiu_video_t ;
typedef int video_frame_info_t ;


 int font_driver_render_msg (int *,void*,char const*,void const*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void wiiu_gfx_set_osd_msg(void *data,
                                 video_frame_info_t *video_info,
                                 const char *msg,
                                 const void *params, void *font)
{
   wiiu_video_t *wiiu = (wiiu_video_t *)data;

   if (wiiu)
   {
      if (wiiu->render_msg_enabled)
         font_driver_render_msg(video_info, font, msg, params);
      else
         printf("OSD msg: %s\n", msg);
   }

}
