
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {unsigned int num_swapchain_images; TYPE_2__* swapchain; TYPE_1__* context; } ;
typedef TYPE_3__ vk_t ;
struct TYPE_12__ {int flags; int queueFamilyIndex; int member_0; } ;
typedef TYPE_4__ VkCommandPoolCreateInfo ;
struct TYPE_13__ {int commandBufferCount; int level; int commandPool; int member_0; } ;
typedef TYPE_5__ VkCommandBufferAllocateInfo ;
struct TYPE_10__ {int cmd; int cmd_pool; } ;
struct TYPE_9__ {int device; int graphics_queue_index; } ;


 int VK_COMMAND_BUFFER_LEVEL_PRIMARY ;
 int VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT ;
 int VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO ;
 int VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO ;
 int vkAllocateCommandBuffers (int ,TYPE_5__*,int *) ;
 int vkCreateCommandPool (int ,TYPE_4__*,int *,int *) ;

__attribute__((used)) static void vulkan_init_command_buffers(vk_t *vk)
{

   unsigned i;

   for (i = 0; i < vk->num_swapchain_images; i++)
   {
      VkCommandPoolCreateInfo pool_info = {
         VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO };
      VkCommandBufferAllocateInfo info = {
         VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO };

      pool_info.queueFamilyIndex = vk->context->graphics_queue_index;
      pool_info.flags =
         VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT;

      vkCreateCommandPool(vk->context->device,
            &pool_info, ((void*)0), &vk->swapchain[i].cmd_pool);

      info.commandPool = vk->swapchain[i].cmd_pool;
      info.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
      info.commandBufferCount = 1;

      vkAllocateCommandBuffers(vk->context->device,
            &info, &vk->swapchain[i].cmd);
   }
}
