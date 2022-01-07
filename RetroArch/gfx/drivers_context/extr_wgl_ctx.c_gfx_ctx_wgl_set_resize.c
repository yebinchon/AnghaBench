
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int invalid_swapchain; } ;
struct TYPE_6__ {int need_new_swapchain; TYPE_1__ context; int created_new_swapchain; } ;




 int RARCH_ERR (char*) ;
 int vulkan_acquire_next_image (TYPE_2__*) ;
 int vulkan_create_swapchain (TYPE_2__*,unsigned int,unsigned int,int ) ;
 int win32_api ;
 int win32_interval ;
 TYPE_2__ win32_vk ;

__attribute__((used)) static bool gfx_ctx_wgl_set_resize(void *data,
      unsigned width, unsigned height)
{
   (void)data;
   (void)width;
   (void)height;

   switch (win32_api)
   {
      case 128:
         break;

      case 129:
      default:
         break;
   }

   return 0;
}
