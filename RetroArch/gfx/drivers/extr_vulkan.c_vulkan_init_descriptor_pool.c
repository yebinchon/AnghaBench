
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int set_layout; } ;
struct TYPE_11__ {unsigned int num_swapchain_images; TYPE_3__ pipelines; TYPE_2__* context; TYPE_1__* swapchain; } ;
typedef TYPE_4__ vk_t ;
struct TYPE_12__ {int const member_1; int member_0; } ;
typedef TYPE_5__ VkDescriptorPoolSize ;
struct TYPE_9__ {int device; } ;
struct TYPE_8__ {int descriptor_manager; } ;





 int vulkan_create_descriptor_manager (int ,TYPE_5__ const*,int,int ) ;

__attribute__((used)) static void vulkan_init_descriptor_pool(vk_t *vk)
{
   unsigned i;
   static const VkDescriptorPoolSize pool_sizes[2] = {
      { 129, 128 },
      { 130, 128 },
   };

   for (i = 0; i < vk->num_swapchain_images; i++)
   {
      vk->swapchain[i].descriptor_manager =
         vulkan_create_descriptor_manager(
               vk->context->device,
               pool_sizes, 2, vk->pipelines.set_layout);
   }
}
