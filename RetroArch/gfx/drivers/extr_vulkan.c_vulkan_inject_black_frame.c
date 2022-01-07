
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {TYPE_3__* context; int cmd; struct vk_per_frame* chain; struct vk_per_frame* swapchain; } ;
typedef TYPE_4__ vk_t ;
struct TYPE_22__ {int context_data; int (* cb_swap_buffers ) (int ,TYPE_5__*) ;} ;
typedef TYPE_5__ video_frame_info_t ;
struct TYPE_19__ {int image; } ;
struct vk_per_frame {TYPE_2__ backbuffer; int cmd; } ;
struct TYPE_23__ {int commandBufferCount; int signalSemaphoreCount; scalar_t__* pSignalSemaphores; int * pCommandBuffers; int member_0; } ;
typedef TYPE_6__ VkSubmitInfo ;
struct TYPE_24__ {int member_2; int member_4; int member_3; int member_1; int member_0; } ;
typedef TYPE_7__ VkImageSubresourceRange ;
struct TYPE_25__ {int flags; int member_0; } ;
typedef TYPE_8__ VkCommandBufferBeginInfo ;
struct TYPE_18__ {float member_0; float member_1; float member_2; float member_3; } ;
struct TYPE_26__ {TYPE_1__ member_0; } ;
typedef TYPE_9__ VkClearColorValue ;
struct TYPE_20__ {unsigned int current_swapchain_index; scalar_t__* swapchain_semaphores; int* swapchain_fences_signalled; int queue_lock; int * swapchain_fences; int queue; } ;


 int VK_ACCESS_MEMORY_READ_BIT ;
 int VK_ACCESS_TRANSFER_WRITE_BIT ;
 int VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT ;
 int VK_IMAGE_ASPECT_COLOR_BIT ;
 int VK_IMAGE_LAYOUT_PRESENT_SRC_KHR ;
 int VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL ;
 int VK_IMAGE_LAYOUT_UNDEFINED ;
 scalar_t__ VK_NULL_HANDLE ;
 int VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT ;
 int VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT ;
 int VK_PIPELINE_STAGE_TRANSFER_BIT ;
 int VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO ;
 int VK_STRUCTURE_TYPE_SUBMIT_INFO ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int stub1 (int ,TYPE_5__*) ;
 int vkBeginCommandBuffer (int ,TYPE_8__*) ;
 int vkCmdClearColorImage (int ,int ,int ,TYPE_9__ const*,int,TYPE_7__ const*) ;
 int vkEndCommandBuffer (int ) ;
 int vkQueueSubmit (int ,int,TYPE_6__*,int ) ;
 int vkResetCommandBuffer (int ,int ) ;
 int vulkan_image_layout_transition (TYPE_4__*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void vulkan_inject_black_frame(vk_t *vk, video_frame_info_t *video_info)
{
   VkCommandBufferBeginInfo begin_info = {
      VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO };
   VkSubmitInfo submit_info = {
      VK_STRUCTURE_TYPE_SUBMIT_INFO };

   const VkClearColorValue clear_color = {{ 0.0f, 0.0f, 0.0f, 1.0f }};
   const VkImageSubresourceRange range = { VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1 };
   unsigned frame_index = vk->context->current_swapchain_index;
   struct vk_per_frame *chain = &vk->swapchain[frame_index];
   vk->chain = chain;
   vk->cmd = chain->cmd;
   begin_info.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
   vkResetCommandBuffer(vk->cmd, 0);
   vkBeginCommandBuffer(vk->cmd, &begin_info);

   vulkan_image_layout_transition(vk, vk->cmd, chain->backbuffer.image,
         VK_IMAGE_LAYOUT_UNDEFINED, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
         0, VK_ACCESS_TRANSFER_WRITE_BIT,
         VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
         VK_PIPELINE_STAGE_TRANSFER_BIT);

   vkCmdClearColorImage(vk->cmd, chain->backbuffer.image, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
         &clear_color, 1, &range);

   vulkan_image_layout_transition(vk, vk->cmd, chain->backbuffer.image,
         VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, VK_IMAGE_LAYOUT_PRESENT_SRC_KHR,
         VK_ACCESS_TRANSFER_WRITE_BIT, VK_ACCESS_MEMORY_READ_BIT,
         VK_PIPELINE_STAGE_TRANSFER_BIT,
         VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT);

   vkEndCommandBuffer(vk->cmd);

   submit_info.commandBufferCount = 1;
   submit_info.pCommandBuffers = &vk->cmd;
   if (vk->context->swapchain_semaphores[frame_index] != VK_NULL_HANDLE)
   {
      submit_info.signalSemaphoreCount = 1;
      submit_info.pSignalSemaphores = &vk->context->swapchain_semaphores[frame_index];
   }




   vkQueueSubmit(vk->context->queue, 1,
         &submit_info, vk->context->swapchain_fences[frame_index]);
   vk->context->swapchain_fences_signalled[frame_index] = 1;




   video_info->cb_swap_buffers(video_info->context_data, video_info);
}
