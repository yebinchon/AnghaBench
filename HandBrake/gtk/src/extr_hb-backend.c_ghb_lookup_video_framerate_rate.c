
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rate; } ;


 TYPE_1__* ghb_lookup_video_framerate (char const*) ;

int
ghb_lookup_video_framerate_rate(const char *name)
{
    return ghb_lookup_video_framerate(name)->rate;
}
