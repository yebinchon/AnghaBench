
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int g_win; } ;
typedef TYPE_1__ gfx_ctx_sdl_data_t ;


 int SDL_GL_SwapBuffers () ;
 int SDL_GL_SwapWindow (int ) ;

__attribute__((used)) static void sdl_ctx_swap_buffers(void *data, void *data2)
{





   SDL_GL_SwapBuffers();

}
