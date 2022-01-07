
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int window; } ;
typedef TYPE_1__ sdl2_video_t ;


 int SDL_GetWindowGrab (int ) ;
 int SDL_SetWindowGrab (int ,int ) ;

__attribute__((used)) static void sdl2_grab_mouse_toggle(void *data)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;
   SDL_SetWindowGrab(vid->window, SDL_GetWindowGrab(vid->window));
}
