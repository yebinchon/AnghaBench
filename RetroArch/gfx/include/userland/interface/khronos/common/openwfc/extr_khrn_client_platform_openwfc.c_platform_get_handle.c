
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int element; } ;
typedef TYPE_1__ EGL_DISPMANX_WINDOW_T ;
typedef int EGLNativeWindowType ;
typedef int EGLDisplay ;


 TYPE_1__* check_default (int ) ;

uint32_t platform_get_handle(EGLDisplay dpy, EGLNativeWindowType win)
{
   EGL_DISPMANX_WINDOW_T *dwin = check_default(win);
   return dwin->element;
}
