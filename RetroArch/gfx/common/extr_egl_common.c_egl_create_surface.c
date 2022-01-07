
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; int surf; int dpy; int config; } ;
typedef TYPE_1__ egl_ctx_data_t ;
typedef int NativeWindowType ;
typedef int EGLint ;


 int EGL_BACK_BUFFER ;
 int EGL_NONE ;
 int EGL_NO_SURFACE ;
 int EGL_RENDER_BUFFER ;
 int RARCH_LOG (char*,void*) ;
 int eglCreateWindowSurface (int ,int ,int ,int *) ;
 scalar_t__ eglGetCurrentContext () ;
 int eglMakeCurrent (int ,int ,int ,int ) ;

bool egl_create_surface(egl_ctx_data_t *egl, void *native_window)
{
   EGLint window_attribs[] = {
    EGL_RENDER_BUFFER, EGL_BACK_BUFFER,
    EGL_NONE,
   };

   egl->surf = eglCreateWindowSurface(egl->dpy, egl->config, (NativeWindowType)native_window, window_attribs);

   if (egl->surf == EGL_NO_SURFACE)
      return 0;


   if (!eglMakeCurrent(egl->dpy, egl->surf, egl->surf, egl->ctx))
      return 0;

   RARCH_LOG("[EGL]: Current context: %p.\n", (void*)eglGetCurrentContext());

   return 1;
}
