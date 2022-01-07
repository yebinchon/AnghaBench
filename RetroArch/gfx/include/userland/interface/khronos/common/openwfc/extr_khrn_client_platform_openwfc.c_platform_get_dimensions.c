
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ height; scalar_t__ width; } ;
typedef TYPE_1__ EGL_DISPMANX_WINDOW_T ;
typedef int EGLNativeWindowType ;
typedef int EGLDisplay ;


 TYPE_1__* check_default (int ) ;

void platform_get_dimensions(EGLDisplay dpy, EGLNativeWindowType win,
      uint32_t *width, uint32_t *height, uint32_t *swapchain_count)
{
   EGL_DISPMANX_WINDOW_T *dwin = check_default(win);

   *width = dwin->width;
   *height = dwin->height;
   *swapchain_count = 0;
}
