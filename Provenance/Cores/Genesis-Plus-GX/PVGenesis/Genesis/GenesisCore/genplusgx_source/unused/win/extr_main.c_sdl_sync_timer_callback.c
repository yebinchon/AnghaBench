
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Uint32 ;
struct TYPE_6__ {char* international; } ;
struct TYPE_5__ {int ticks; int sem_sync; } ;
struct TYPE_4__ {int frames_rendered; } ;


 int SDL_SemPost (int ) ;
 int SDL_WM_SetCaption (char*,int *) ;
 TYPE_3__ rominfo ;
 TYPE_2__ sdl_sync ;
 TYPE_1__ sdl_video ;
 int sprintf (char*,char*,int,char*) ;
 scalar_t__ vdp_pal ;

__attribute__((used)) static Uint32 sdl_sync_timer_callback(Uint32 interval)
{
  SDL_SemPost(sdl_sync.sem_sync);
  char caption[100];
  sdl_sync.ticks++;
  if (sdl_sync.ticks == (vdp_pal ? 50 : 20))
  {
    int fps = vdp_pal ? (sdl_video.frames_rendered / 3) : sdl_video.frames_rendered;
    sdl_sync.ticks = sdl_video.frames_rendered = 0;
    sprintf(caption,"%d fps - %s ", fps, rominfo.international);
    SDL_WM_SetCaption(caption, ((void*)0));
  }
  return interval;
}
