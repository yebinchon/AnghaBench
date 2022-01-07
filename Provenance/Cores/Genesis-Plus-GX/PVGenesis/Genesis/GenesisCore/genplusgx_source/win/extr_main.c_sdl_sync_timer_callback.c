
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Uint32 ;
struct TYPE_9__ {int ticks; int sem_sync; } ;
struct TYPE_8__ {int frames_rendered; } ;
struct TYPE_6__ {int code; int * data2; int * data1; void* type; } ;
struct TYPE_7__ {TYPE_1__ user; void* type; } ;
typedef TYPE_1__ SDL_UserEvent ;
typedef TYPE_2__ SDL_Event ;


 int SDL_PushEvent (TYPE_2__*) ;
 int SDL_SemPost (int ) ;
 void* SDL_USEREVENT ;
 TYPE_4__ sdl_sync ;
 TYPE_3__ sdl_video ;
 scalar_t__ vdp_pal ;

__attribute__((used)) static Uint32 sdl_sync_timer_callback(Uint32 interval)
{
  SDL_SemPost(sdl_sync.sem_sync);
  sdl_sync.ticks++;
  if (sdl_sync.ticks == (vdp_pal ? 50 : 20))
  {
    SDL_Event event;
    SDL_UserEvent userevent;

    userevent.type = SDL_USEREVENT;
    userevent.code = vdp_pal ? (sdl_video.frames_rendered / 3) : sdl_video.frames_rendered;
    userevent.data1 = ((void*)0);
    userevent.data2 = ((void*)0);
    sdl_sync.ticks = sdl_video.frames_rendered = 0;

    event.type = SDL_USEREVENT;
    event.user = userevent;

    SDL_PushEvent(&event);
  }
  return interval;
}
