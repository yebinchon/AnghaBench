
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_DISPLAY ;
 scalar_t__ EGL_NO_SURFACE ;
 int ectxt ;
 scalar_t__ edpy ;
 int eglDestroyContext (scalar_t__,int ) ;
 int eglDestroySurface (scalar_t__,scalar_t__) ;
 int eglMakeCurrent (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int eglTerminate (scalar_t__) ;
 scalar_t__ esfc ;
 void* gl_es_display ;
 void* gl_es_surface ;
 int gl_platform_finish () ;

void gl_finish(void)
{
 eglMakeCurrent(edpy, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
 eglDestroyContext(edpy, ectxt);
 ectxt = EGL_NO_CONTEXT;
 eglDestroySurface(edpy, esfc);
 esfc = EGL_NO_SURFACE;
 eglTerminate(edpy);
 edpy = EGL_NO_DISPLAY;

 gl_es_display = (void *)edpy;
 gl_es_surface = (void *)esfc;

 gl_platform_finish();
}
