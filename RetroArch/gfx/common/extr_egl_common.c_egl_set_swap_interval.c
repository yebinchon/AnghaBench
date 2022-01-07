
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interval; scalar_t__ dpy; } ;
typedef TYPE_1__ egl_ctx_data_t ;


 scalar_t__ EGL_NO_DISPLAY ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,int) ;
 int eglGetCurrentContext () ;
 int eglSwapInterval (scalar_t__,int) ;
 int egl_report_error () ;

void egl_set_swap_interval(egl_ctx_data_t *egl, int interval)
{




   egl->interval = interval;

   if (egl->dpy == EGL_NO_DISPLAY)
      return;
   if (!(eglGetCurrentContext()))
      return;

   RARCH_LOG("[EGL]: eglSwapInterval(%u)\n", interval);
   if (!eglSwapInterval(egl->dpy, interval))
   {
      RARCH_ERR("[EGL]: eglSwapInterval() failed.\n");
      egl_report_error();
   }
}
