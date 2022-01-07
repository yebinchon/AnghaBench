
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rotation; } ;
typedef TYPE_1__ sdl2_video_t ;



__attribute__((used)) static void sdl2_gfx_set_rotation(void *data, unsigned rotation)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;

   if (vid)
      vid->rotation = 270 * rotation;
}
