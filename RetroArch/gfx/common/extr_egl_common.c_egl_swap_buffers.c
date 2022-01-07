
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dpy; scalar_t__ surf; } ;
typedef TYPE_1__ egl_ctx_data_t ;


 scalar_t__ EGL_NO_DISPLAY ;
 scalar_t__ EGL_NO_SURFACE ;
 int eglSwapBuffers (scalar_t__,scalar_t__) ;

void egl_swap_buffers(void *data)
{
   egl_ctx_data_t *egl = (egl_ctx_data_t*)data;
   if ( egl &&
         egl->dpy != EGL_NO_DISPLAY &&
         egl->surf != EGL_NO_SURFACE
         )
      eglSwapBuffers(egl->dpy, egl->surf);
}
