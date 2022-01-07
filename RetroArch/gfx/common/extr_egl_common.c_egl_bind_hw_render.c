
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use_hw_ctx; scalar_t__ dpy; scalar_t__ surf; int ctx; int hw_ctx; } ;
typedef TYPE_1__ egl_ctx_data_t ;


 scalar_t__ EGL_NO_DISPLAY ;
 scalar_t__ EGL_NO_SURFACE ;
 int eglMakeCurrent (scalar_t__,scalar_t__,scalar_t__,int ) ;

void egl_bind_hw_render(egl_ctx_data_t *egl, bool enable)
{
   egl->use_hw_ctx = enable;

   if (egl->dpy == EGL_NO_DISPLAY)
      return;
   if (egl->surf == EGL_NO_SURFACE)
      return;

   eglMakeCurrent(egl->dpy, egl->surf,
         egl->surf,
         enable ? egl->hw_ctx : egl->ctx);
}
