
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int EGL_OPENGL_API ;
 int EGL_OPENGL_ES_API ;
 int EGL_OPENVG_API ;



 int eglBindAPI (int ) ;
 unsigned int g_egl_major ;
 unsigned int g_egl_minor ;
 int xegl_api ;

__attribute__((used)) static bool gfx_ctx_xegl_bind_api(void *video_driver,
   enum gfx_ctx_api api, unsigned major, unsigned minor)
{
   g_egl_major = major;
   g_egl_minor = minor;
   xegl_api = api;

   switch (api)
   {
      case 130:

         if ((major * 1000 + minor) >= 3001)
            break;

         return eglBindAPI(EGL_OPENGL_API);
      case 129:

         if (major >= 3)
            break;

         return eglBindAPI(EGL_OPENGL_ES_API);
      case 128:



      default:
         break;
   }

   return 0;
}
