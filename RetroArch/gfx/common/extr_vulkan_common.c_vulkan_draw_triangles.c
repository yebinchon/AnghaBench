
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ pipeline; int mvp; void* sampler; void* view; int dirty; } ;
struct TYPE_11__ {int layout; } ;
struct TYPE_14__ {int cmd; TYPE_3__ tracker; TYPE_2__ pipelines; TYPE_9__* context; TYPE_1__* chain; } ;
typedef TYPE_5__ vk_t ;
struct vk_draw_triangles {scalar_t__ pipeline; int vertices; TYPE_4__* vbo; int sampler; int texture; int uniform_size; int uniform; } ;
struct vk_buffer_range {int offset; int buffer; int data; } ;
typedef int VkDescriptorSet ;
struct TYPE_15__ {int device; } ;
struct TYPE_13__ {int offset; int buffer; } ;
struct TYPE_10__ {int descriptor_manager; int ubo; } ;


 void* VK_NULL_HANDLE ;
 int VK_PIPELINE_BIND_POINT_GRAPHICS ;
 int VULKAN_DIRTY_DYNAMIC_BIT ;
 int memcpy (int ,int ,int ) ;
 int memset (int *,int ,int) ;
 int vkCmdBindDescriptorSets (int ,int ,int ,int ,int,int *,int ,int *) ;
 int vkCmdBindPipeline (int ,int ,scalar_t__) ;
 int vkCmdBindVertexBuffers (int ,int ,int,int *,int *) ;
 int vkCmdDraw (int ,int ,int,int ,int ) ;
 int vulkan_buffer_chain_alloc (TYPE_9__*,int *,int ,struct vk_buffer_range*) ;
 int vulkan_check_dynamic_state (TYPE_5__*) ;
 int vulkan_descriptor_manager_alloc (int ,int *) ;
 int vulkan_transition_texture (TYPE_5__*,int ,int ) ;
 int vulkan_write_quad_descriptors (int ,int ,int ,int ,int ,int ,int ) ;

void vulkan_draw_triangles(vk_t *vk, const struct vk_draw_triangles *call)
{
   if (call->texture)
      vulkan_transition_texture(vk, vk->cmd, call->texture);

   if (call->pipeline != vk->tracker.pipeline)
   {
      vkCmdBindPipeline(vk->cmd,
            VK_PIPELINE_BIND_POINT_GRAPHICS, call->pipeline);
      vk->tracker.pipeline = call->pipeline;


      vk->tracker.dirty |= VULKAN_DIRTY_DYNAMIC_BIT;
   }

   vulkan_check_dynamic_state(vk);


   {
      VkDescriptorSet set;


      struct vk_buffer_range range;
      if (!vulkan_buffer_chain_alloc(vk->context, &vk->chain->ubo,
               call->uniform_size, &range))
         return;

      memcpy(range.data, call->uniform, call->uniform_size);

      set = vulkan_descriptor_manager_alloc(
            vk->context->device,
            &vk->chain->descriptor_manager);

      vulkan_write_quad_descriptors(
            vk->context->device,
            set,
            range.buffer,
            range.offset,
            call->uniform_size,
            call->texture,
            call->sampler);

      vkCmdBindDescriptorSets(vk->cmd, VK_PIPELINE_BIND_POINT_GRAPHICS,
            vk->pipelines.layout, 0,
            1, &set, 0, ((void*)0));

      vk->tracker.view = VK_NULL_HANDLE;
      vk->tracker.sampler = VK_NULL_HANDLE;
      memset(&vk->tracker.mvp, 0, sizeof(vk->tracker.mvp));
   }


   vkCmdBindVertexBuffers(vk->cmd, 0, 1,
         &call->vbo->buffer, &call->vbo->offset);


   vkCmdDraw(vk->cmd, call->vertices, 1, 0, 0);
}
