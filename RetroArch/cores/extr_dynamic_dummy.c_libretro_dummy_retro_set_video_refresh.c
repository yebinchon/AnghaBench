
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_video_refresh_t ;


 int dummy_video_cb ;

void libretro_dummy_retro_set_video_refresh(retro_video_refresh_t cb)
{
   dummy_video_cb = cb;
}
