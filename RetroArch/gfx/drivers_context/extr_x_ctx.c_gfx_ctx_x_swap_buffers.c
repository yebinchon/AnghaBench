
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_swapchain_index; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
struct TYPE_6__ {TYPE_3__ vk; int g_glx_win; int g_is_double; int sbc; scalar_t__ msc; int ust; int remainder; int divisor; scalar_t__ g_interval; int swap_mode; } ;
typedef TYPE_2__ gfx_ctx_x_data_t ;






 int RARCH_LOG (char*,int ,scalar_t__,int ) ;
 int g_x11_dpy ;
 int glXSwapBuffers (int ,int ) ;
 int glXSwapBuffersMscOML (int ,int ,int ,int ,int ) ;
 int glXWaitForMscOML (int ,int ,scalar_t__,int ,int ,int *,scalar_t__*,int *) ;
 int vulkan_acquire_next_image (TYPE_3__*) ;
 int vulkan_present (TYPE_3__*,int ) ;
 int x_api ;

__attribute__((used)) static void gfx_ctx_x_swap_buffers(void *data, void *data2)
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
