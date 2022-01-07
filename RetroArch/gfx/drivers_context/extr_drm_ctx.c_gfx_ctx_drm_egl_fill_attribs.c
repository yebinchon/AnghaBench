
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct retro_hw_render_callback {int debug_context; } ;
struct TYPE_4__ {int major; int minor; } ;
struct TYPE_5__ {TYPE_1__ egl; } ;
typedef TYPE_2__ gfx_ctx_drm_data_t ;
typedef int EGLint ;


 int EGL_CONTEXT_CLIENT_VERSION ;
 int EGL_CONTEXT_FLAGS_KHR ;
 int EGL_CONTEXT_MAJOR_VERSION_KHR ;
 void* EGL_CONTEXT_MINOR_VERSION_KHR ;
 int EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR ;
 int EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR ;
 int EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR ;
 int EGL_NONE ;



 int drm_api ;
 struct retro_hw_render_callback* video_driver_get_hw_context () ;

__attribute__((used)) static EGLint *gfx_ctx_drm_egl_fill_attribs(
      gfx_ctx_drm_data_t *drm, EGLint *attr)
{
   switch (drm_api)
   {
      case 128:
         break;
      case 130:
      default:
         break;
   }

   *attr = EGL_NONE;
   return attr;
}
