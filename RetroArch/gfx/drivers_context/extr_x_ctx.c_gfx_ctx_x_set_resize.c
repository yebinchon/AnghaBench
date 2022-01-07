
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int invalid_swapchain; } ;
struct TYPE_7__ {int need_new_swapchain; TYPE_1__ context; int created_new_swapchain; int swapchain; } ;
struct TYPE_6__ {TYPE_3__ vk; int g_interval; } ;
typedef TYPE_2__ gfx_ctx_x_data_t ;




 int RARCH_ERR (char*) ;
 int VK_NULL_HANDLE ;
 int vulkan_acquire_next_image (TYPE_3__*) ;
 int vulkan_create_swapchain (TYPE_3__*,unsigned int,unsigned int,int ) ;
 int x_api ;

__attribute__((used)) static bool gfx_ctx_x_set_resize(void *data,
      unsigned width, unsigned height)
{
   (void)data;
   (void)width;
   (void)height;

   switch (x_api)
   {
      case 128:
         break;

      case 129:
      default:
         break;
   }
   return 1;
}
