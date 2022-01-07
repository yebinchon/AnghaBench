
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quitting; } ;
typedef TYPE_1__ sdl2_video_t ;


 int check_window (TYPE_1__*) ;

__attribute__((used)) static bool sdl2_gfx_alive(void *data)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;
   check_window(vid);
   return !vid->quitting;
}
