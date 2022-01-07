
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_Window ;


 int SDL_FALSE ;
 int SDL_SetWindowGrab (int *,int ) ;
 int SDL_TRUE ;
 scalar_t__ string_is_not_equal (int ,char*) ;
 int video_driver_get_ident () ;
 scalar_t__ video_driver_get_ptr (int) ;

__attribute__((used)) static void sdl_grab_mouse(void *data, bool state)
{
}
