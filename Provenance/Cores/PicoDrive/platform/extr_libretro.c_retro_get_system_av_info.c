
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int base_width; float aspect_ratio; int max_height; int max_width; int base_height; } ;
struct TYPE_7__ {int fps; int sample_rate; } ;
struct retro_system_av_info {TYPE_1__ geometry; TYPE_3__ timing; } ;
struct TYPE_6__ {scalar_t__ pal; } ;
struct TYPE_8__ {TYPE_2__ m; } ;


 TYPE_4__ Pico ;
 int VOUT_MAX_HEIGHT ;
 int VOUT_MAX_WIDTH ;
 int memset (struct retro_system_av_info*,int ,int) ;
 int vout_height ;

void retro_get_system_av_info(struct retro_system_av_info *info)
{
 memset(info, 0, sizeof(*info));
 info->timing.fps = Pico.m.pal ? 50 : 60;
 info->timing.sample_rate = 44100;
 info->geometry.base_width = 320;
 info->geometry.base_height = vout_height;
 info->geometry.max_width = VOUT_MAX_WIDTH;
 info->geometry.max_height = VOUT_MAX_HEIGHT;
 info->geometry.aspect_ratio = 0.0f;
}
