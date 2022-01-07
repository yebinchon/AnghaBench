
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef int switch_video_t ;


 int font_driver_render_msg (int *,void*,char const*,void const*) ;

__attribute__((used)) static void switch_set_osd_msg(void *data,
            video_frame_info_t *video_info,
            const char *msg,
            const void *params, void *font)
{
    switch_video_t *sw = (switch_video_t *)data;

    if (sw)
        font_driver_render_msg(video_info, font, msg, params);
}
