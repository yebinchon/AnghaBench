
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SDL_GrabMode ;


 scalar_t__ const SDL_GRAB_OFF ;
 scalar_t__ const SDL_GRAB_ON ;
 scalar_t__ const SDL_GRAB_QUERY ;
 scalar_t__ SDL_WM_GrabInput (scalar_t__ const) ;

__attribute__((used)) static void sdl_grab_mouse_toggle(void *data)
{
   const SDL_GrabMode mode = SDL_WM_GrabInput(SDL_GRAB_QUERY);

   (void)data;

   SDL_WM_GrabInput(mode == SDL_GRAB_ON ? SDL_GRAB_OFF : SDL_GRAB_ON);
}
