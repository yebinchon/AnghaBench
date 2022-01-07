
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int need_new_swapchain; int swapchain; } ;
struct TYPE_4__ {int g_interval; TYPE_1__ vk; int g_glx_win; } ;
typedef TYPE_2__ gfx_ctx_x_data_t ;






 int RARCH_LOG (char*,int) ;
 int RARCH_WARN (char*) ;
 int g_pglSwapInterval (int) ;
 int g_pglSwapIntervalEXT (int ,int ,int) ;
 int g_pglSwapIntervalSGI (int) ;
 int g_x11_dpy ;
 int x_api ;

__attribute__((used)) static void gfx_ctx_x_swap_interval(void *data, int interval)
{
   gfx_ctx_x_data_t *x = (gfx_ctx_x_data_t*)data;

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
