
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pitch; int tex; } ;
struct TYPE_5__ {TYPE_1__ menu; } ;
typedef TYPE_2__ sdl2_video_t ;


 int SDL_UpdateTexture (int ,int *,void const*,int ) ;
 int sdl_refresh_input_size (TYPE_2__*,int,int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void sdl2_poke_set_texture_frame(void *data,
      const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   if (frame)
   {
      sdl2_video_t *vid = (sdl2_video_t*)data;

      sdl_refresh_input_size(vid, 1, rgb32, width, height,
            width * (rgb32 ? 4 : 2));

      SDL_UpdateTexture(vid->menu.tex, ((void*)0), frame, vid->menu.pitch);
   }
}
