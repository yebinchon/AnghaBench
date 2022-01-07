
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfx_ctx_sdl_data_t ;


 int free (int *) ;
 int sdl_ctx_destroy_resources (int *) ;

__attribute__((used)) static void sdl_ctx_destroy(void *data)
{
   gfx_ctx_sdl_data_t *sdl = (gfx_ctx_sdl_data_t*)data;

   if (!sdl)
      return;

   sdl_ctx_destroy_resources(sdl);
   free(sdl);
}
