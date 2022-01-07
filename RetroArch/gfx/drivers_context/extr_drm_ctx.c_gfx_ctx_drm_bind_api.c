
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int EGL_OPENGL_API ;
 int EGL_OPENGL_ES_API ;
 int EGL_OPENVG_API ;




 int drm_api ;
 int eglBindAPI (int ) ;
 unsigned int g_egl_major ;
 unsigned int g_egl_minor ;

__attribute__((used)) static bool gfx_ctx_drm_bind_api(void *video_driver,
      enum gfx_ctx_api api, unsigned major, unsigned minor)
{
   (void)video_driver;

   drm_api = api;





   switch (api)
   {
      case 130:
         break;

      case 129:
         break;

      case 128:



      case 131:
      default:
         break;
   }

   return 0;
}
