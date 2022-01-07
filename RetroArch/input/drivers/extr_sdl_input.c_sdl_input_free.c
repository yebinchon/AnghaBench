
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ sdl_input_t ;
struct TYPE_3__ {int (* destroy ) () ;} ;
typedef int SDL_Event ;


 int SDL_FIRSTEVENT ;
 int SDL_FlushEvents (int ,int ) ;
 int SDL_LASTEVENT ;
 scalar_t__ SDL_PollEvent (int *) ;
 int free (void*) ;
 int stub1 () ;

__attribute__((used)) static void sdl_input_free(void *data)
{

   SDL_Event event;

   sdl_input_t *sdl = (sdl_input_t*)data;

   if (!data)
      return;





   while (SDL_PollEvent(&event));


   if (sdl->joypad)
      sdl->joypad->destroy();

   free(data);
}
