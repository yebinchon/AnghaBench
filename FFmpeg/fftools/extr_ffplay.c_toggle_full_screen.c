
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VideoState ;


 int SDL_SetWindowFullscreen (int ,int ) ;
 int SDL_WINDOW_FULLSCREEN_DESKTOP ;
 int is_full_screen ;
 int window ;

__attribute__((used)) static void toggle_full_screen(VideoState *is)
{
    is_full_screen = !is_full_screen;
    SDL_SetWindowFullscreen(window, is_full_screen ? SDL_WINDOW_FULLSCREEN_DESKTOP : 0);
}
