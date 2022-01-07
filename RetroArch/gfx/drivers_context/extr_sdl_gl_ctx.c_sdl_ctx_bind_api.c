
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int GFX_CTX_OPENGL_API ;
 int GFX_CTX_OPENGL_ES_API ;
 int SDL_GL_CONTEXT_MAJOR_VERSION ;
 int SDL_GL_CONTEXT_MINOR_VERSION ;
 unsigned int SDL_GL_CONTEXT_PROFILE_COMPATIBILITY ;
 unsigned int SDL_GL_CONTEXT_PROFILE_ES ;
 int SDL_GL_CONTEXT_PROFILE_MASK ;
 int SDL_GL_SetAttribute (int ,unsigned int) ;
 unsigned int g_major ;
 unsigned int g_minor ;
 int sdl_api ;

__attribute__((used)) static bool sdl_ctx_bind_api(void *data,
      enum gfx_ctx_api api, unsigned major,
      unsigned minor)
{
   sdl_api = api;
   g_major = major;
   g_minor = minor;


   if (api != GFX_CTX_OPENGL_API)
      return 0;

   return 1;
}
