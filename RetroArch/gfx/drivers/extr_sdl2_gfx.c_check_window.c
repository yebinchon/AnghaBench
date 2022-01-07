
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int quitting; int should_resize; } ;
typedef TYPE_2__ sdl2_video_t ;
struct TYPE_6__ {int event; } ;
struct TYPE_8__ {int type; TYPE_1__ window; } ;
typedef TYPE_3__ SDL_Event ;


 int SDL_GETEVENT ;
 scalar_t__ SDL_PeepEvents (TYPE_3__*,int,int ,int,int) ;
 int SDL_PumpEvents () ;


 int SDL_WINDOWEVENT_RESIZED ;

__attribute__((used)) static void check_window(sdl2_video_t *vid)
{
   SDL_Event event;

   SDL_PumpEvents();
   while (SDL_PeepEvents(&event, 1, SDL_GETEVENT, 129, 128) > 0)
   {
      switch (event.type)
      {
         case 129:
            vid->quitting = 1;
            break;

         case 128:
            if (event.window.event == SDL_WINDOWEVENT_RESIZED)
               vid->should_resize = 1;
            break;

         default:
            break;
      }
   }
}
