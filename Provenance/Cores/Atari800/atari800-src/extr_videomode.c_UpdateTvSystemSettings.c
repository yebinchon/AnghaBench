
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asp_ratio; } ;


 scalar_t__ Atari800_TV_PAL ;
 scalar_t__ Atari800_tv_mode ;
 size_t VIDEOMODE_MODE_NORMAL ;
 TYPE_1__* display_modes ;
 int pixel_aspect_ratio_ntsc ;
 int pixel_aspect_ratio_pal ;

__attribute__((used)) static void UpdateTvSystemSettings(void)
{
 display_modes[VIDEOMODE_MODE_NORMAL].asp_ratio = Atari800_tv_mode == Atari800_TV_PAL ? pixel_aspect_ratio_pal : pixel_aspect_ratio_ntsc;
}
