
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mouse_l; int mouse_r; int mouse_m; int mouse_b4; int mouse_b5; int mouse_wu; int mouse_wd; int mouse_abs_y; int mouse_abs_x; int mouse_y; int mouse_x; } ;
typedef TYPE_1__ sdl_input_t ;
typedef int Uint8 ;


 int SDL_BUTTON (int ) ;
 int SDL_BUTTON_LEFT ;
 int SDL_BUTTON_MIDDLE ;
 int SDL_BUTTON_RIGHT ;
 int SDL_BUTTON_WHEELDOWN ;
 int SDL_BUTTON_WHEELUP ;
 int SDL_BUTTON_X1 ;
 int SDL_BUTTON_X2 ;
 int SDL_GetMouseState (int *,int *) ;
 int SDL_GetRelativeMouseState (int *,int *) ;

__attribute__((used)) static void sdl_poll_mouse(sdl_input_t *sdl)
{
   Uint8 btn = SDL_GetRelativeMouseState(&sdl->mouse_x, &sdl->mouse_y);

   SDL_GetMouseState(&sdl->mouse_abs_x, &sdl->mouse_abs_y);

   sdl->mouse_l = (SDL_BUTTON(SDL_BUTTON_LEFT) & btn) ? 1 : 0;
   sdl->mouse_r = (SDL_BUTTON(SDL_BUTTON_RIGHT) & btn) ? 1 : 0;
   sdl->mouse_m = (SDL_BUTTON(SDL_BUTTON_MIDDLE) & btn) ? 1 : 0;
   sdl->mouse_b4 = (SDL_BUTTON(SDL_BUTTON_X1) & btn) ? 1 : 0;
   sdl->mouse_b5 = (SDL_BUTTON(SDL_BUTTON_X2) & btn) ? 1 : 0;

   sdl->mouse_wu = (SDL_BUTTON(SDL_BUTTON_WHEELUP) & btn) ? 1 : 0;
   sdl->mouse_wd = (SDL_BUTTON(SDL_BUTTON_WHEELDOWN) & btn) ? 1 : 0;

}
