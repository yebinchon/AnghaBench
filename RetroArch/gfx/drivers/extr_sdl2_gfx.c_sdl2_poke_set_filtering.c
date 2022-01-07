
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int smooth; } ;
struct TYPE_4__ {int frame; TYPE_1__ video; } ;
typedef TYPE_2__ sdl2_video_t ;


 int sdl_tex_zero (int *) ;

__attribute__((used)) static void sdl2_poke_set_filtering(void *data, unsigned index, bool smooth)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;
   vid->video.smooth = smooth;

   sdl_tex_zero(&vid->frame);
}
