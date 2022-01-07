
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int window; } ;
typedef TYPE_1__ sdl2_video_t ;


 unsigned int SDL_GetWindowFlags (int ) ;
 unsigned int SDL_WINDOW_INPUT_FOCUS ;
 unsigned int SDL_WINDOW_MOUSE_FOCUS ;

__attribute__((used)) static bool sdl2_gfx_focus(void *data)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;
   unsigned flags = (SDL_WINDOW_INPUT_FOCUS | SDL_WINDOW_MOUSE_FOCUS);
   return (SDL_GetWindowFlags(vid->window) & flags) == flags;
}
