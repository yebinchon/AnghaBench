
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EGLint ;
typedef int EGLDisplay ;
typedef int EGLConfig ;


 int EGL_BLUE_SIZE ;
 int EGL_GREEN_SIZE ;
 int EGL_RED_SIZE ;
 int eglGetConfigAttrib (int ,int ,int ,int*) ;

bool egl_default_accept_config_cb(void *display_data, EGLDisplay dpy, EGLConfig config)
{

   EGLint r, g, b;
   if (!eglGetConfigAttrib(dpy, config, EGL_RED_SIZE, &r))
      return 0;
   if (!eglGetConfigAttrib(dpy, config, EGL_GREEN_SIZE, &g))
      return 0;
   if (!eglGetConfigAttrib(dpy, config, EGL_BLUE_SIZE, &b))
      return 0;

   if (r != 8 || g != 8 || b != 8)
      return 0;

   return 1;
}
