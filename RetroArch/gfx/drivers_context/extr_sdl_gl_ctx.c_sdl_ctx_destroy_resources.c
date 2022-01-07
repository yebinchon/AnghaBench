
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * g_win; int * g_ctx; } ;
typedef TYPE_1__ gfx_ctx_sdl_data_t ;


 int SDL_DestroyWindow (int *) ;
 int SDL_FreeSurface (int *) ;
 int SDL_GL_DeleteContext (int *) ;
 int SDL_INIT_VIDEO ;
 int SDL_QuitSubSystem (int ) ;

__attribute__((used)) static void sdl_ctx_destroy_resources(gfx_ctx_sdl_data_t *sdl)
{
   if (!sdl)
      return;
   if (sdl->g_win)
      SDL_FreeSurface(sdl->g_win);

   sdl->g_win = ((void*)0);

   SDL_QuitSubSystem(SDL_INIT_VIDEO);
}
