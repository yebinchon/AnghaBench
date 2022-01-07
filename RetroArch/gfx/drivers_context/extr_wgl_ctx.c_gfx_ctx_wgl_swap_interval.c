
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int need_new_swapchain; int swapchain; } ;





 int RARCH_LOG (char*,int) ;
 int RARCH_WARN (char*) ;
 int p_swap_interval (int) ;
 int win32_api ;
 int win32_hrc ;
 int win32_interval ;
 TYPE_1__ win32_vk ;

__attribute__((used)) static void gfx_ctx_wgl_swap_interval(void *data, int interval)
{
   (void)data;

   switch (win32_api)
   {
      case 129:
         break;

      case 128:
         break;

      case 130:
      default:
         win32_interval = interval;
         break;
   }
}
