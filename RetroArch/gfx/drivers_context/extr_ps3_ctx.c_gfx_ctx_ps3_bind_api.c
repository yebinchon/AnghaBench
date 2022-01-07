
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int GFX_CTX_OPENGL_API ;
 int GFX_CTX_OPENGL_ES_API ;
 int ps3_api ;

__attribute__((used)) static bool gfx_ctx_ps3_bind_api(void *data,
      enum gfx_ctx_api api, unsigned major, unsigned minor)
{
   (void)data;
   (void)major;
   (void)minor;

   ps3_api = api;

   if (
         api == GFX_CTX_OPENGL_API ||
         api == GFX_CTX_OPENGL_ES_API
      )
      return 1;

   return 0;
}
