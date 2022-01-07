
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_GL_SWAP_CONTROL ;
 int SDL_GL_SetAttribute (int ,int) ;
 int SDL_GL_SetSwapInterval (int) ;

__attribute__((used)) static void sdl_ctx_swap_interval(void *data, int interval)
{
   (void)data;



   SDL_GL_SetAttribute(SDL_GL_SWAP_CONTROL, interval);

}
