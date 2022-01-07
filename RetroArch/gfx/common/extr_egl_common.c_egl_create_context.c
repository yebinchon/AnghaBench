
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hw_ctx; int * ctx; int config; int dpy; scalar_t__ use_hw_ctx; } ;
typedef TYPE_1__ egl_ctx_data_t ;
typedef int EGLint ;
typedef int * EGLContext ;


 int * EGL_NO_CONTEXT ;
 int RARCH_LOG (char*,void*) ;
 void* eglCreateContext (int ,int ,int *,int const*) ;

bool egl_create_context(egl_ctx_data_t *egl, const EGLint *egl_attribs)
{
   EGLContext ctx = eglCreateContext(egl->dpy, egl->config, EGL_NO_CONTEXT,
         egl_attribs);

   if (ctx == EGL_NO_CONTEXT)
      return 0;

   egl->ctx = ctx;
   egl->hw_ctx = ((void*)0);

   if (egl->use_hw_ctx)
   {
      egl->hw_ctx = eglCreateContext(egl->dpy, egl->config, egl->ctx,
            egl_attribs);
      RARCH_LOG("[EGL]: Created shared context: %p.\n", (void*)egl->hw_ctx);

      if (egl->hw_ctx == EGL_NO_CONTEXT)
         return 0;
   }

   return 1;
}
