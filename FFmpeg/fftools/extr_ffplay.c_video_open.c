
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
typedef TYPE_1__ VideoState ;


 int SDL_SetWindowFullscreen (int ,int ) ;
 int SDL_SetWindowPosition (int ,int ,int ) ;
 int SDL_SetWindowSize (int ,int,int) ;
 int SDL_SetWindowTitle (int ,scalar_t__) ;
 int SDL_ShowWindow (int ) ;
 int SDL_WINDOW_FULLSCREEN_DESKTOP ;
 int default_height ;
 int default_width ;
 scalar_t__ input_filename ;
 scalar_t__ is_full_screen ;
 int screen_height ;
 int screen_left ;
 int screen_top ;
 int screen_width ;
 int window ;
 scalar_t__ window_title ;

__attribute__((used)) static int video_open(VideoState *is)
{
    int w,h;

    w = screen_width ? screen_width : default_width;
    h = screen_height ? screen_height : default_height;

    if (!window_title)
        window_title = input_filename;
    SDL_SetWindowTitle(window, window_title);

    SDL_SetWindowSize(window, w, h);
    SDL_SetWindowPosition(window, screen_left, screen_top);
    if (is_full_screen)
        SDL_SetWindowFullscreen(window, SDL_WINDOW_FULLSCREEN_DESKTOP);
    SDL_ShowWindow(window);

    is->width = w;
    is->height = h;

    return 0;
}
