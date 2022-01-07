
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int EGL_OPENGL_ES_API ;

 int eglBindAPI (int ) ;
 int emscripten_api ;

__attribute__((used)) static bool gfx_ctx_emscripten_bind_api(void *data,
      enum gfx_ctx_api api, unsigned major, unsigned minor)
{
   (void)data;
   (void)major;
   (void)minor;

   emscripten_api = api;

   switch (api)
   {
      case 128:
         return eglBindAPI(EGL_OPENGL_ES_API);
      default:
         break;
   }

   return 0;
}
