
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int inited; int * window; int * renderer; int * texture; } ;
typedef TYPE_1__ SDLContext ;
typedef TYPE_2__ AVFormatContext ;


 int SDL_DestroyRenderer (int *) ;
 int SDL_DestroyTexture (int *) ;
 int SDL_DestroyWindow (int *) ;
 int SDL_Quit () ;

__attribute__((used)) static int sdl2_write_trailer(AVFormatContext *s)
{
    SDLContext *sdl = s->priv_data;

    if (sdl->texture)
        SDL_DestroyTexture(sdl->texture);
    sdl->texture = ((void*)0);

    if (sdl->renderer)
        SDL_DestroyRenderer(sdl->renderer);
    sdl->renderer = ((void*)0);

    if (sdl->window)
        SDL_DestroyWindow(sdl->window);
    sdl->window = ((void*)0);

    if (!sdl->inited)
        SDL_Quit();

    return 0;
}
