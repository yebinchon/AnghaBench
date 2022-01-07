
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vsync; } ;
struct TYPE_5__ {TYPE_1__ video; } ;
typedef TYPE_2__ sdl2_video_t ;


 int sdl_refresh_renderer (TYPE_2__*) ;

__attribute__((used)) static void sdl2_gfx_set_nonblock_state(void *data, bool toggle)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;

   vid->video.vsync = !toggle;
   sdl_refresh_renderer(vid);
}
