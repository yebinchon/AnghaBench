
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_swapchain_index; } ;
struct TYPE_6__ {TYPE_1__ context; } ;





 int SwapBuffers (int ) ;
 int vulkan_acquire_next_image (TYPE_2__*) ;
 int vulkan_present (TYPE_2__*,int ) ;
 int win32_api ;
 int win32_hdc ;
 TYPE_2__ win32_vk ;

__attribute__((used)) static void gfx_ctx_wgl_swap_buffers(void *data, void *data2)
{
   (void)data;

   switch (win32_api)
   {
      case 129:
         SwapBuffers(win32_hdc);
         break;
      case 128:




         break;

      case 130:
      default:
         break;
   }
}
