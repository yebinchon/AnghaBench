
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int GFX_CTX_OPENGL_API ;
 int cgl_api ;

__attribute__((used)) static bool gfx_ctx_cgl_bind_api(void *data, enum gfx_ctx_api api,
   unsigned major, unsigned minor)
{
   (void)data;
   (void)api;
   (void)major;
   (void)minor;

   if (api == GFX_CTX_OPENGL_API)
   {
      cgl_api = api;
      return 1;
   }

   return 0;
}
