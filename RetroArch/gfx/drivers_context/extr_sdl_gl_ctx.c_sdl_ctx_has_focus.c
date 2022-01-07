
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int g_win; } ;
typedef TYPE_1__ gfx_ctx_sdl_data_t ;


 unsigned int SDL_APPACTIVE ;
 unsigned int SDL_APPINPUTFOCUS ;
 unsigned int SDL_GetAppState () ;
 unsigned int SDL_GetWindowFlags (int ) ;
 unsigned int SDL_WINDOW_INPUT_FOCUS ;
 unsigned int SDL_WINDOW_MOUSE_FOCUS ;

__attribute__((used)) static bool sdl_ctx_has_focus(void *data)
{
   unsigned flags;






   flags = (SDL_APPINPUTFOCUS | SDL_APPACTIVE);
   return (SDL_GetAppState() & flags) == flags;

}
