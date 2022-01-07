
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_video_rate_clock ;
 int hb_video_rate_max ;
 int hb_video_rate_min ;

void hb_video_framerate_get_limits(int *low, int *high, int *clock)
{
    *low = hb_video_rate_min;
    *high = hb_video_rate_max;
    *clock = hb_video_rate_clock;
}
