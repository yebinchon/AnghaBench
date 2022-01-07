
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int force_aspect; } ;
struct TYPE_4__ {int should_resize; TYPE_1__ video; } ;
typedef TYPE_2__ sdl2_video_t ;



__attribute__((used)) static void sdl2_poke_set_aspect_ratio(void *data, unsigned aspect_ratio_idx)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;


   if (!vid)
      return;

   vid->video.force_aspect = 1;
   vid->should_resize = 1;
}
