
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* pfn_eglGetPlatformDisplay ) (scalar_t__,void*,int *) ;
typedef scalar_t__ (* PFNEGLGETPLATFORMDISPLAYEXTPROC ) (scalar_t__,void*,int *) ;
typedef scalar_t__ EGLenum ;
typedef int EGLNativeDisplayType ;
typedef scalar_t__ EGLDisplay ;
typedef int EGLAttrib ;


 scalar_t__ EGL_NONE ;
 scalar_t__ EGL_NO_DISPLAY ;
 int RARCH_LOG (char*) ;
 scalar_t__ check_egl_client_extension (char*) ;
 scalar_t__ check_egl_version (int,int) ;
 scalar_t__ eglGetDisplay (int ) ;
 scalar_t__ eglGetProcAddress (char*) ;

__attribute__((used)) static EGLDisplay get_egl_display(EGLenum platform, void *native)
{
   if (platform != EGL_NONE)
   {
   }




   RARCH_LOG("[EGL] Falling back to eglGetDisplay\n");
   return eglGetDisplay((EGLNativeDisplayType) native);
}
