
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {scalar_t__ show_mode; scalar_t__ force_refresh; int paused; } ;
typedef TYPE_1__ VideoState ;
typedef int SDL_Event ;


 scalar_t__ CURSOR_HIDE_DELAY ;
 double REFRESH_RATE ;
 int SDL_FIRSTEVENT ;
 int SDL_GETEVENT ;
 int SDL_LASTEVENT ;
 int SDL_PeepEvents (int *,int,int ,int ,int ) ;
 int SDL_PumpEvents () ;
 int SDL_ShowCursor (int ) ;
 scalar_t__ SHOW_MODE_NONE ;
 scalar_t__ av_gettime_relative () ;
 int av_usleep (int ) ;
 int cursor_hidden ;
 scalar_t__ cursor_last_shown ;
 int video_refresh (TYPE_1__*,double*) ;

__attribute__((used)) static void refresh_loop_wait_event(VideoState *is, SDL_Event *event) {
    double remaining_time = 0.0;
    SDL_PumpEvents();
    while (!SDL_PeepEvents(event, 1, SDL_GETEVENT, SDL_FIRSTEVENT, SDL_LASTEVENT)) {
        if (!cursor_hidden && av_gettime_relative() - cursor_last_shown > CURSOR_HIDE_DELAY) {
            SDL_ShowCursor(0);
            cursor_hidden = 1;
        }
        if (remaining_time > 0.0)
            av_usleep((int64_t)(remaining_time * 1000000.0));
        remaining_time = REFRESH_RATE;
        if (is->show_mode != SHOW_MODE_NONE && (!is->paused || is->force_refresh))
            video_refresh(is, &remaining_time);
        SDL_PumpEvents();
    }
}
