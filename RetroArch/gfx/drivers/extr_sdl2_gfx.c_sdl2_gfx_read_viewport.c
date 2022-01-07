
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int window; } ;
typedef TYPE_1__ sdl2_video_t ;
struct TYPE_7__ {int h; int pitch; int pixels; } ;
typedef TYPE_2__ SDL_Surface ;


 int RARCH_WARN (char*,int ) ;
 TYPE_2__* SDL_ConvertSurfaceFormat (TYPE_2__*,int ,int ) ;
 int SDL_GetError () ;
 TYPE_2__* SDL_GetWindowSurface (int ) ;
 int SDL_PIXELFORMAT_BGR24 ;
 int memcpy (int *,int ,int) ;
 int video_driver_cached_frame () ;

__attribute__((used)) static bool sdl2_gfx_read_viewport(void *data, uint8_t *buffer, bool is_idle)
{
   SDL_Surface *surf = ((void*)0), *bgr24 = ((void*)0);
   sdl2_video_t *vid = (sdl2_video_t*)data;

   if (!is_idle)
      video_driver_cached_frame();

   surf = SDL_GetWindowSurface(vid->window);
   bgr24 = SDL_ConvertSurfaceFormat(surf, SDL_PIXELFORMAT_BGR24, 0);

   if (!bgr24)
   {
      RARCH_WARN("Failed to convert viewport data to BGR24: %s", SDL_GetError());
      return 0;
   }

   memcpy(buffer, bgr24->pixels, bgr24->h * bgr24->pitch);

   return 1;
}
