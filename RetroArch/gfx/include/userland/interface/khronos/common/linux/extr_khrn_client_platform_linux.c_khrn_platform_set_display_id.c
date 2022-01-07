
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ EGLNativeDisplayType ;
typedef int EGLDisplay ;


 scalar_t__ EGL_DEFAULT_DISPLAY ;
 int EGL_NO_DISPLAY ;

EGLDisplay khrn_platform_set_display_id(EGLNativeDisplayType display_id)
{
   if (display_id == EGL_DEFAULT_DISPLAY)
      return (EGLDisplay)1;
   else
      return EGL_NO_DISPLAY;
}
