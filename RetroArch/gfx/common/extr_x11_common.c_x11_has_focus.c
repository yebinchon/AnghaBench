
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Window ;


 int XGetInputFocus (int ,scalar_t__*,int*) ;
 int g_x11_dpy ;
 scalar_t__ g_x11_has_focus ;
 scalar_t__ g_x11_true_full ;
 scalar_t__ g_x11_win ;

bool x11_has_focus(void *data)
{
   Window win;
   int rev;

   XGetInputFocus(g_x11_dpy, &win, &rev);

   return (win == g_x11_win && g_x11_has_focus) || g_x11_true_full;
}
