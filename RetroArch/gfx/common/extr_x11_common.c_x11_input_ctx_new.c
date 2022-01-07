
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_DISPLAY_X11 ;
 scalar_t__ g_x11_dpy ;
 int g_x11_true_full ;
 scalar_t__ g_x11_win ;
 int g_x11_xic ;
 int g_x11_xim ;
 int video_driver_display_set (uintptr_t) ;
 int video_driver_display_type_set (int ) ;
 int video_driver_window_set (uintptr_t) ;
 int x11_create_input_context (scalar_t__,scalar_t__,int *,int *) ;

bool x11_input_ctx_new(bool true_full)
{
   if (!x11_create_input_context(g_x11_dpy, g_x11_win,
            &g_x11_xim, &g_x11_xic))
      return 0;

   video_driver_display_type_set(RARCH_DISPLAY_X11);
   video_driver_display_set((uintptr_t)g_x11_dpy);
   video_driver_window_set((uintptr_t)g_x11_win);
   g_x11_true_full = true_full;
   return 1;
}
