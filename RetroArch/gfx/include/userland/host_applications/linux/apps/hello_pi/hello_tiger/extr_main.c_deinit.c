
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 scalar_t__ EGL_SUCCESS ;
 int PS_destruct (int ) ;
 int assert (int) ;
 scalar_t__ eglGetError () ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglReleaseThread () ;
 int eglTerminate (int ) ;
 int egldisplay ;
 int tiger ;

void deinit(void)
{
 PS_destruct(tiger);
 eglMakeCurrent(egldisplay, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
 assert(eglGetError() == EGL_SUCCESS);
 eglTerminate(egldisplay);
 assert(eglGetError() == EGL_SUCCESS);
 eglReleaseThread();
}
