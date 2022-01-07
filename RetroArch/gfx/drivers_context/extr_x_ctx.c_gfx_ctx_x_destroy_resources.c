
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int g_should_reset_mode; int g_core_es; int vk; int g_glx_win; int * g_hw_ctx; int * g_ctx; int remainder; int divisor; int swap_mode; } ;
typedef TYPE_1__ gfx_ctx_x_data_t ;


 int DefaultRootWindow (int *) ;




 int None ;
 int XCloseDisplay (int *) ;
 scalar_t__ g_major ;
 scalar_t__ g_minor ;
 int * g_pglSwapInterval ;
 int * g_pglSwapIntervalEXT ;
 int * g_pglSwapIntervalSGI ;
 int * g_x11_dpy ;
 scalar_t__ g_x11_win ;
 int glFinish () ;
 int glXDestroyContext (int *,int *) ;
 int glXDestroyWindow (int *,int ) ;
 int glXMakeContextCurrent (int *,int ,int ,int *) ;
 int glXSwapBuffers (int *,int ) ;
 int glXSwapBuffersMscOML (int *,int ,int ,int ,int ) ;
 int video_driver_is_video_cache_context () ;
 int vulkan_context_destroy (int *,int) ;
 int x11_colormap_destroy () ;
 int x11_exit_fullscreen (int *) ;
 int x11_input_ctx_destroy () ;
 int x11_window_destroy (int) ;
 int x_api ;
 int xinerama_save_last_used_monitor (int ) ;

__attribute__((used)) static void gfx_ctx_x_destroy_resources(gfx_ctx_x_data_t *x)
{
   x11_input_ctx_destroy();

   if (g_x11_dpy)
   {
      switch (x_api)
      {
         case 130:
         case 129:
            break;

         case 128:



            break;

         case 131:
         default:
            break;
      }
   }

   if (g_x11_win && g_x11_dpy)
   {




      x11_window_destroy(0);
   }

   x11_colormap_destroy();

   if (g_x11_dpy)
   {
      if (x->g_should_reset_mode)
      {
         x11_exit_fullscreen(g_x11_dpy);
         x->g_should_reset_mode = 0;
      }

      if (!video_driver_is_video_cache_context())
      {
         XCloseDisplay(g_x11_dpy);
         g_x11_dpy = ((void*)0);
      }
   }






   g_major = 0;
   g_minor = 0;
   x->g_core_es = 0;
}
