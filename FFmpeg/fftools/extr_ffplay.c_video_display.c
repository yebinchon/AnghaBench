
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ show_mode; scalar_t__ video_st; scalar_t__ audio_st; int width; } ;
typedef TYPE_1__ VideoState ;


 int SDL_RenderClear (int ) ;
 int SDL_RenderPresent (int ) ;
 int SDL_SetRenderDrawColor (int ,int ,int ,int ,int) ;
 scalar_t__ SHOW_MODE_VIDEO ;
 int renderer ;
 int video_audio_display (TYPE_1__*) ;
 int video_image_display (TYPE_1__*) ;
 int video_open (TYPE_1__*) ;

__attribute__((used)) static void video_display(VideoState *is)
{
    if (!is->width)
        video_open(is);

    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
    SDL_RenderClear(renderer);
    if (is->audio_st && is->show_mode != SHOW_MODE_VIDEO)
        video_audio_display(is);
    else if (is->video_st)
        video_image_display(is);
    SDL_RenderPresent(renderer);
}
