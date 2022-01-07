
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int video_width; int video_height; int video_depth; int skip; int sndcard; int sndrate; int joy_driver; scalar_t__ swap; scalar_t__ sound; scalar_t__ throttle; scalar_t__ vsync; scalar_t__ scale; scalar_t__ scanlines; scalar_t__ remap; int video_driver; } ;


 int GFX_AUTODETECT ;
 int JOY_TYPE_NONE ;
 TYPE_1__ option ;

void set_option_defaults(void)
{
    option.video_driver = GFX_AUTODETECT;
    option.video_width = 640;
    option.video_height = 480;
    option.video_depth = 16;

    option.remap = 0;
    option.scanlines = 0;
    option.scale = 0;

    option.vsync = 0;
    option.throttle = 0;
    option.skip = 1;

    option.sound = 0;
    option.sndcard = -1;
    option.sndrate = 48000;
    option.swap = 0;

    option.joy_driver = JOY_TYPE_NONE;
}
