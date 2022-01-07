
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfx_ctx_proc_t ;


 int SDL_GL_GetProcAddress (char const*) ;

__attribute__((used)) static gfx_ctx_proc_t sdl_ctx_get_proc_address(const char *name)
{
   return (gfx_ctx_proc_t)SDL_GL_GetProcAddress(name);
}
