
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vsync; } ;
struct TYPE_5__ {int renderer; int window; TYPE_1__ video; } ;
typedef TYPE_2__ sdl2_video_t ;


 int RARCH_ERR (char*,int ) ;
 int SDL_ClearHints () ;
 int SDL_CreateRenderer (int ,int,unsigned int) ;
 int SDL_GetError () ;
 int SDL_HINT_OVERRIDE ;
 int SDL_HINT_RENDER_VSYNC ;
 unsigned int SDL_RENDERER_ACCELERATED ;
 unsigned int SDL_RENDERER_PRESENTVSYNC ;
 int SDL_SetHintWithPriority (int ,char*,int ) ;
 int SDL_SetRenderDrawColor (int ,int ,int ,int ,int) ;

__attribute__((used)) static void sdl2_init_renderer(sdl2_video_t *vid)
{
   unsigned flags = SDL_RENDERER_ACCELERATED;

   if (vid->video.vsync)
      flags |= SDL_RENDERER_PRESENTVSYNC;

   SDL_ClearHints();
   SDL_SetHintWithPriority(SDL_HINT_RENDER_VSYNC,
                           vid->video.vsync ? "1" : "0", SDL_HINT_OVERRIDE);
   vid->renderer = SDL_CreateRenderer(vid->window, -1, flags);

   if (!vid->renderer)
   {
      RARCH_ERR("[SDL2]: Failed to initialize renderer: %s", SDL_GetError());
      return;
   }

   SDL_SetRenderDrawColor(vid->renderer, 0, 0, 0, 255);
}
