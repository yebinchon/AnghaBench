
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* RUN_APP_FN_T ) (void const*,int *) ;
typedef int EGL_DISPMANX_WINDOW_T ;
typedef int EGLNativeWindowType ;


 int bcm_host_init () ;
 scalar_t__ create_native_window (int *) ;
 int vcos_log_trace (char*,...) ;

int runApp(const char *name, RUN_APP_FN_T run_app_fn, const void *params, size_t param_size)
{
   EGL_DISPMANX_WINDOW_T win;
   (void) param_size;

   vcos_log_trace("Initialsing BCM HOST");
   bcm_host_init();

   vcos_log_trace("Starting '%s'", name);
   if (create_native_window(&win) != 0)
      return -1;

   return run_app_fn(params, (EGLNativeWindowType *) &win);
}
