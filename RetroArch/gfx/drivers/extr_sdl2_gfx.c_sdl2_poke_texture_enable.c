
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active; } ;
struct TYPE_4__ {TYPE_1__ menu; } ;
typedef TYPE_2__ sdl2_video_t ;



__attribute__((used)) static void sdl2_poke_texture_enable(void *data,
      bool enable, bool full_screen)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;

   if (!vid)
      return;

   vid->menu.active = enable;
}
