
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_2__ {int dev; } ;
typedef TYPE_1__ d3d8_video_t ;


 int d3d8_begin_scene (int ) ;
 int d3d8_end_scene (int ) ;
 int font_driver_render_msg (int *,void*,char const*,void const*) ;

__attribute__((used)) static void d3d8_set_osd_msg(void *data,
      video_frame_info_t *video_info,
      const char *msg,
      const void *params, void *font)
{
   d3d8_video_t *d3d = (d3d8_video_t*)data;

   d3d8_begin_scene(d3d->dev);
   font_driver_render_msg(video_info, font, msg, params);
   d3d8_end_scene(d3d->dev);
}
