
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef void gfx_ctx_sdl_data_t ;


 int RARCH_LOG (char*,int ,int ,int ) ;
 int RARCH_WARN (char*,int ) ;
 int SDL_GetError () ;
 int SDL_INIT_VIDEO ;
 scalar_t__ SDL_Init (int ) ;
 scalar_t__ SDL_InitSubSystem (int ) ;
 int SDL_MAJOR_VERSION ;
 int SDL_MINOR_VERSION ;
 int SDL_PATCHLEVEL ;
 scalar_t__ SDL_WasInit (int ) ;
 int XInitThreads () ;
 scalar_t__ calloc (int,int) ;
 int free (void*) ;
 int sdl_ctx_destroy_resources (void*) ;

__attribute__((used)) static void *sdl_ctx_init(video_frame_info_t *video_info, void *video_driver)
{
   gfx_ctx_sdl_data_t *sdl = (gfx_ctx_sdl_data_t*)
      calloc(1, sizeof(gfx_ctx_sdl_data_t));

   if (!sdl)
      return ((void*)0);





   if (SDL_WasInit(0) == 0)
   {
      if (SDL_Init(SDL_INIT_VIDEO) < 0)
         goto error;
   }
   else if (SDL_InitSubSystem(SDL_INIT_VIDEO) < 0)
      goto error;

   RARCH_LOG("[SDL_GL] SDL %i.%i.%i gfx context driver initialized.\n",
           SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL);

   return sdl;

error:
   RARCH_WARN("[SDL_GL]: Failed to initialize SDL gfx context driver: %s\n",
              SDL_GetError());

   sdl_ctx_destroy_resources(sdl);

   if (sdl)
      free(sdl);

   return ((void*)0);
}
