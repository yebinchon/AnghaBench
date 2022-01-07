
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* context; int num_swapchain_images; } ;
typedef TYPE_2__ vk_t ;
struct TYPE_10__ {int num_swapchain_images; } ;


 int vulkan_init_buffers (TYPE_2__*) ;
 int vulkan_init_command_buffers (TYPE_2__*) ;
 int vulkan_init_descriptor_pool (TYPE_2__*) ;
 int vulkan_init_framebuffers (TYPE_2__*) ;
 int vulkan_init_pipelines (TYPE_2__*) ;
 int vulkan_init_textures (TYPE_2__*) ;

__attribute__((used)) static void vulkan_init_resources(vk_t *vk)
{
   if (!vk->context)
      return;

   vk->num_swapchain_images = vk->context->num_swapchain_images;

   vulkan_init_framebuffers(vk);
   vulkan_init_pipelines(vk);
   vulkan_init_descriptor_pool(vk);
   vulkan_init_textures(vk);
   vulkan_init_buffers(vk);
   vulkan_init_command_buffers(vk);
}
