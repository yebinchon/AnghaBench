
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ctx; scalar_t__ hw_ctx; scalar_t__ surf; scalar_t__ config; scalar_t__ dpy; } ;
typedef TYPE_1__ egl_ctx_data_t ;


 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_DISPLAY ;
 scalar_t__ EGL_NO_SURFACE ;
 int eglDestroyContext (scalar_t__,scalar_t__) ;
 int eglDestroySurface (scalar_t__,scalar_t__) ;
 int eglMakeCurrent (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int eglTerminate (scalar_t__) ;
 int frontend_driver_destroy_signal_handler_state () ;
 int g_egl_inited ;
 int glFinish () ;
 int glFlush () ;

void egl_destroy(egl_ctx_data_t *egl)
{
   if (egl->dpy)
   {
      eglMakeCurrent(egl->dpy,
            EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
      if (egl->ctx != EGL_NO_CONTEXT)
         eglDestroyContext(egl->dpy, egl->ctx);

      if (egl->hw_ctx != EGL_NO_CONTEXT)
         eglDestroyContext(egl->dpy, egl->hw_ctx);

      if (egl->surf != EGL_NO_SURFACE)
         eglDestroySurface(egl->dpy, egl->surf);
      eglTerminate(egl->dpy);
   }





   egl->ctx = EGL_NO_CONTEXT;
   egl->hw_ctx = EGL_NO_CONTEXT;
   egl->surf = EGL_NO_SURFACE;
   egl->dpy = EGL_NO_DISPLAY;
   egl->config = 0;
   g_egl_inited = 0;

   frontend_driver_destroy_signal_handler_state();
}
