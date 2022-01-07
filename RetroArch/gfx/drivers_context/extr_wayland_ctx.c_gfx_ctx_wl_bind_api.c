
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int EGL_OPENGL_API ;
 int EGL_OPENGL_ES_API ;
 int EGL_OPENVG_API ;
 int EGL_TRUE ;





 int eglBindAPI (int ) ;
 unsigned int g_egl_major ;
 unsigned int g_egl_minor ;
 int wl_api ;

__attribute__((used)) static bool gfx_ctx_wl_bind_api(void *video_driver,
      enum gfx_ctx_api api, unsigned major, unsigned minor)
{




   wl_api = api;

   switch (api)
   {
      case 131:
         break;
      case 130:
         break;
      case 129:






         break;
      case 128:



         break;

      case 132:
      default:
         break;
   }

   return 0;
}
