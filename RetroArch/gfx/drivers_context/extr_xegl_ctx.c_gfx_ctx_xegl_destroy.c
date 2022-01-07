
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int should_reset_mode; int egl; } ;
typedef TYPE_1__ xegl_ctx_data_t ;


 int DefaultScreen (int ) ;
 int RootWindow (int ,int ) ;
 int egl_destroy (int *) ;
 int free (void*) ;
 int g_x11_dpy ;
 scalar_t__ g_x11_win ;
 int x11_colormap_destroy () ;
 int x11_exit_fullscreen (int ) ;
 int x11_input_ctx_destroy () ;
 int x11_window_destroy (int) ;
 int xinerama_save_last_used_monitor (int ) ;

__attribute__((used)) static void gfx_ctx_xegl_destroy(void *data)
{
   xegl_ctx_data_t *xegl = (xegl_ctx_data_t*)data;

   x11_input_ctx_destroy();




   if (g_x11_win)
   {





      x11_window_destroy(0);
   }

   x11_colormap_destroy();

   if (xegl->should_reset_mode)
   {
      x11_exit_fullscreen(g_x11_dpy);
      xegl->should_reset_mode = 0;
   }

   free(data);




}
