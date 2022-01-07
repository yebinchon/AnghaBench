
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {unsigned int num_swapchain_images; TYPE_4__* context; TYPE_1__* swapchain; } ;
typedef TYPE_5__ vk_t ;
struct TYPE_9__ {int minUniformBufferOffsetAlignment; } ;
struct TYPE_8__ {TYPE_3__ limits; } ;
struct TYPE_10__ {TYPE_2__ gpu_properties; } ;
struct TYPE_7__ {void* ubo; void* vbo; } ;


 int VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT ;
 int VK_BUFFER_USAGE_VERTEX_BUFFER_BIT ;
 int VULKAN_BUFFER_BLOCK_SIZE ;
 void* vulkan_buffer_chain_init (int ,int,int ) ;

__attribute__((used)) static void vulkan_init_buffers(vk_t *vk)
{
   unsigned i;
   for (i = 0; i < vk->num_swapchain_images; i++)
   {
      vk->swapchain[i].vbo = vulkan_buffer_chain_init(
            VULKAN_BUFFER_BLOCK_SIZE, 16, VK_BUFFER_USAGE_VERTEX_BUFFER_BIT);
      vk->swapchain[i].ubo = vulkan_buffer_chain_init(
            VULKAN_BUFFER_BLOCK_SIZE,
            vk->context->gpu_properties.limits.minUniformBufferOffsetAlignment,
            VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT);
   }
}
