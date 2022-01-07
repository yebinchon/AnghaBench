
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quitting; } ;
typedef TYPE_1__ sdl_video_t ;


 int sdl_gfx_check_window (TYPE_1__*) ;

__attribute__((used)) static bool sdl_gfx_alive(void *data)
{
   sdl_video_t *vid = (sdl_video_t*)data;
   sdl_gfx_check_window(vid);
   return !vid->quitting;
}
