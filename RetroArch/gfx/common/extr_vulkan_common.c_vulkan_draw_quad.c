
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {scalar_t__ pipeline; scalar_t__ view; scalar_t__ sampler; int mvp; int dirty; } ;
struct TYPE_12__ {int layout; } ;
struct TYPE_15__ {int cmd; TYPE_3__* chain; TYPE_10__* context; TYPE_2__ tracker; TYPE_1__ pipelines; } ;
typedef TYPE_4__ vk_t ;
struct vk_vertex {int dummy; } ;
struct vk_draw_quad {scalar_t__ pipeline; scalar_t__ sampler; int color; int * mvp; TYPE_5__* texture; } ;
struct vk_buffer_range {int offset; int buffer; scalar_t__ data; } ;
typedef int VkDescriptorSet ;
struct TYPE_16__ {scalar_t__ view; } ;
struct TYPE_14__ {int vbo; int descriptor_manager; int ubo; } ;
struct TYPE_11__ {int device; } ;


 int VK_PIPELINE_BIND_POINT_GRAPHICS ;
 int VULKAN_DIRTY_DYNAMIC_BIT ;
 int memcpy (scalar_t__,int *,int) ;
 scalar_t__ string_is_equal_fast (int *,int *,int) ;
 int vkCmdBindDescriptorSets (int ,int ,int ,int ,int,int *,int ,int *) ;
 int vkCmdBindPipeline (int ,int ,scalar_t__) ;
 int vkCmdBindVertexBuffers (int ,int ,int,int *,int *) ;
 int vkCmdDraw (int ,int,int,int ,int ) ;
 int vulkan_buffer_chain_alloc (TYPE_10__*,int *,int,struct vk_buffer_range*) ;
 int vulkan_check_dynamic_state (TYPE_4__*) ;
 int vulkan_descriptor_manager_alloc (int ,int *) ;
 int vulkan_transition_texture (TYPE_4__*,int ,TYPE_5__*) ;
 int vulkan_write_quad_descriptors (int ,int ,int ,int ,int,TYPE_5__*,scalar_t__) ;
 int vulkan_write_quad_vbo (struct vk_vertex*,float,float,float,float,float,float,float,float,int *) ;

void vulkan_draw_quad(vk_t *vk, const struct vk_draw_quad *quad)
{
   vulkan_transition_texture(vk, vk->cmd, quad->texture);

   if (quad->pipeline != vk->tracker.pipeline)
   {
      vkCmdBindPipeline(vk->cmd,
            VK_PIPELINE_BIND_POINT_GRAPHICS, quad->pipeline);

      vk->tracker.pipeline = quad->pipeline;

      vk->tracker.dirty |= VULKAN_DIRTY_DYNAMIC_BIT;
   }

   vulkan_check_dynamic_state(vk);


   {
      VkDescriptorSet set;
      struct vk_buffer_range range;

      if (!vulkan_buffer_chain_alloc(vk->context, &vk->chain->ubo,
               sizeof(*quad->mvp), &range))
         return;

      if (
               string_is_equal_fast(quad->mvp,
                  &vk->tracker.mvp, sizeof(*quad->mvp))
            || quad->texture->view != vk->tracker.view
            || quad->sampler != vk->tracker.sampler)
      {

         struct vk_buffer_range range;

         if (!vulkan_buffer_chain_alloc(vk->context, &vk->chain->ubo,
                  sizeof(*quad->mvp), &range))
            return;

         memcpy(range.data, quad->mvp, sizeof(*quad->mvp));

         set = vulkan_descriptor_manager_alloc(
               vk->context->device,
               &vk->chain->descriptor_manager);

         vulkan_write_quad_descriptors(
               vk->context->device,
               set,
               range.buffer,
               range.offset,
               sizeof(*quad->mvp),
               quad->texture,
               quad->sampler);

         vkCmdBindDescriptorSets(vk->cmd, VK_PIPELINE_BIND_POINT_GRAPHICS,
               vk->pipelines.layout, 0,
               1, &set, 0, ((void*)0));

         vk->tracker.view = quad->texture->view;
         vk->tracker.sampler = quad->sampler;
         vk->tracker.mvp = *quad->mvp;
      }
   }


   {
      struct vk_buffer_range range;
      if (!vulkan_buffer_chain_alloc(vk->context, &vk->chain->vbo,
               6 * sizeof(struct vk_vertex), &range))
         return;

      vulkan_write_quad_vbo((struct vk_vertex*)range.data,
            0.0f, 0.0f, 1.0f, 1.0f,
            0.0f, 0.0f, 1.0f, 1.0f,
            &quad->color);

      vkCmdBindVertexBuffers(vk->cmd, 0, 1,
            &range.buffer, &range.offset);
   }


   vkCmdDraw(vk->cmd, 6, 1, 0, 0);
}
