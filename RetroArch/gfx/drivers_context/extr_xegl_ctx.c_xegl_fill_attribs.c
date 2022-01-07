
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int major; int minor; } ;
struct TYPE_5__ {TYPE_1__ egl; } ;
typedef TYPE_2__ xegl_ctx_data_t ;
struct retro_hw_render_callback {int debug_context; } ;
typedef int EGLint ;


 int EGL_CONTEXT_CLIENT_VERSION ;
 int EGL_CONTEXT_FLAGS_KHR ;
 int EGL_CONTEXT_MAJOR_VERSION_KHR ;
 void* EGL_CONTEXT_MINOR_VERSION_KHR ;
 int EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR ;
 int EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR ;
 int EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR ;
 int EGL_NONE ;


 struct retro_hw_render_callback* video_driver_get_hw_context () ;
 int xegl_api ;

__attribute__((used)) static EGLint *xegl_fill_attribs(xegl_ctx_data_t *xegl, EGLint *attr)
{
   switch (xegl_api)
   {
      case 128:

         *attr++ = EGL_CONTEXT_CLIENT_VERSION;
         *attr++ = xegl->egl.major ? (EGLint)xegl->egl.major : 2;







         break;

      default:
         break;
   }

   *attr = EGL_NONE;
   return attr;
}
