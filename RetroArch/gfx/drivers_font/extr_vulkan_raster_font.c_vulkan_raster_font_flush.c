
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int needs_update; TYPE_9__* vk; int texture; int texture_optimal; int vertices; int range; } ;
typedef TYPE_4__ vulkan_raster_t ;
struct vk_draw_triangles {int uniform_size; int vertices; int * vbo; int * uniform; int sampler; int * texture; int pipeline; } ;
struct TYPE_18__ {int commandBufferCount; int * pCommandBuffers; int member_0; } ;
typedef TYPE_5__ VkSubmitInfo ;
struct TYPE_19__ {int flags; int member_0; } ;
typedef TYPE_6__ VkCommandBufferBeginInfo ;
struct TYPE_20__ {int commandBufferCount; int level; int commandPool; int member_0; } ;
typedef TYPE_7__ VkCommandBufferAllocateInfo ;
typedef int VkCommandBuffer ;
struct TYPE_15__ {int mipmap_linear; } ;
struct TYPE_14__ {int font; } ;
struct TYPE_21__ {int staging_pool; TYPE_3__* context; int mvp; TYPE_2__ samplers; TYPE_1__ pipelines; } ;
struct TYPE_16__ {int device; int queue_lock; int queue; } ;


 int VK_COMMAND_BUFFER_LEVEL_PRIMARY ;
 int VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT ;
 int VK_NULL_HANDLE ;
 int VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO ;
 int VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO ;
 int VK_STRUCTURE_TYPE_SUBMIT_INFO ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int vkAllocateCommandBuffers (int ,TYPE_7__*,int *) ;
 int vkBeginCommandBuffer (int ,TYPE_6__*) ;
 int vkEndCommandBuffer (int ) ;
 int vkFreeCommandBuffers (int ,int ,int,int *) ;
 int vkQueueSubmit (int ,int,TYPE_5__*,int ) ;
 int vkQueueWaitIdle (int ) ;
 int vulkan_copy_staging_to_dynamic (TYPE_9__*,int ,int *,int *) ;
 int vulkan_draw_triangles (TYPE_9__*,struct vk_draw_triangles*) ;

__attribute__((used)) static void vulkan_raster_font_flush(vulkan_raster_t *font)
{
   struct vk_draw_triangles call;

   call.pipeline = font->vk->pipelines.font;
   call.texture = &font->texture_optimal;
   call.sampler = font->vk->samplers.mipmap_linear;
   call.uniform = &font->vk->mvp;
   call.uniform_size = sizeof(font->vk->mvp);
   call.vbo = &font->range;
   call.vertices = font->vertices;

   if(font->needs_update)
   {
      VkCommandBuffer staging;
      VkSubmitInfo submit_info = { VK_STRUCTURE_TYPE_SUBMIT_INFO };
      VkCommandBufferAllocateInfo cmd_info = { VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO };
      VkCommandBufferBeginInfo begin_info = { VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO };

      cmd_info.commandPool = font->vk->staging_pool;
      cmd_info.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
      cmd_info.commandBufferCount = 1;
      vkAllocateCommandBuffers(font->vk->context->device, &cmd_info, &staging);

      begin_info.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
      vkBeginCommandBuffer(staging, &begin_info);

      vulkan_copy_staging_to_dynamic(font->vk, staging,
            &font->texture_optimal, &font->texture);

      vkEndCommandBuffer(staging);





      submit_info.commandBufferCount = 1;
      submit_info.pCommandBuffers = &staging;
      vkQueueSubmit(font->vk->context->queue,
            1, &submit_info, VK_NULL_HANDLE);

      vkQueueWaitIdle(font->vk->context->queue);





      vkFreeCommandBuffers(font->vk->context->device,
            font->vk->staging_pool, 1, &staging);

      font->needs_update = 0;
   }

   vulkan_draw_triangles(font->vk, &call);
}
