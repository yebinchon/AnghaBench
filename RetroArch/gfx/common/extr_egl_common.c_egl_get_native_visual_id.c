
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; int dpy; } ;
typedef TYPE_1__ egl_ctx_data_t ;
typedef int EGLint ;


 int EGL_NATIVE_VISUAL_ID ;
 int RARCH_ERR (char*) ;
 int eglGetConfigAttrib (int ,int ,int ,int *) ;

bool egl_get_native_visual_id(egl_ctx_data_t *egl, EGLint *value)
{
   if (!eglGetConfigAttrib(egl->dpy, egl->config,
         EGL_NATIVE_VISUAL_ID, value))
   {
      RARCH_ERR("[EGL]: egl_get_native_visual_id failed.\n");
      return 0;
   }

   return 1;
}
