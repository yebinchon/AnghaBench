
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_ShowCursor (int) ;

__attribute__((used)) static void sdl2_show_mouse(void *data, bool state)
{
   (void)data;
   SDL_ShowCursor(state);
}
