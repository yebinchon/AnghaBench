#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ pipeline; scalar_t__ view; scalar_t__ sampler; int /*<<< orphan*/  mvp; int /*<<< orphan*/  dirty; } ;
struct TYPE_12__ {int /*<<< orphan*/  layout; } ;
struct TYPE_15__ {int /*<<< orphan*/  cmd; TYPE_3__* chain; TYPE_10__* context; TYPE_2__ tracker; TYPE_1__ pipelines; } ;
typedef  TYPE_4__ vk_t ;
struct vk_vertex {int dummy; } ;
struct vk_draw_quad {scalar_t__ pipeline; scalar_t__ sampler; int /*<<< orphan*/  color; int /*<<< orphan*/ * mvp; TYPE_5__* texture; } ;
struct vk_buffer_range {int /*<<< orphan*/  offset; int /*<<< orphan*/  buffer; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  VkDescriptorSet ;
struct TYPE_16__ {scalar_t__ view; } ;
struct TYPE_14__ {int /*<<< orphan*/  vbo; int /*<<< orphan*/  descriptor_manager; int /*<<< orphan*/  ubo; } ;
struct TYPE_11__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  VK_PIPELINE_BIND_POINT_GRAPHICS ; 
 int /*<<< orphan*/  VULKAN_DIRTY_DYNAMIC_BIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,int /*<<< orphan*/ *,int,struct vk_buffer_range*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct vk_vertex*,float,float,float,float,float,float,float,float,int /*<<< orphan*/ *) ; 

void FUNC12(vk_t *vk, const struct vk_draw_quad *quad)
{
   FUNC9(vk, vk->cmd, quad->texture);

   if (quad->pipeline != vk->tracker.pipeline)
   {
      FUNC3(vk->cmd,
            VK_PIPELINE_BIND_POINT_GRAPHICS, quad->pipeline);

      vk->tracker.pipeline = quad->pipeline;
      /* Changing pipeline invalidates dynamic state. */
      vk->tracker.dirty   |= VULKAN_DIRTY_DYNAMIC_BIT;
   }

   FUNC7(vk);

   /* Upload descriptors */
   {
      VkDescriptorSet set;
      struct vk_buffer_range range;

      if (!FUNC6(vk->context, &vk->chain->ubo,
               sizeof(*quad->mvp), &range))
         return;

      if (
               FUNC1(quad->mvp,
                  &vk->tracker.mvp, sizeof(*quad->mvp))
            || quad->texture->view != vk->tracker.view
            || quad->sampler != vk->tracker.sampler)
      {
         /* Upload UBO */
         struct vk_buffer_range range;

         if (!FUNC6(vk->context, &vk->chain->ubo,
                  sizeof(*quad->mvp), &range))
            return;

         FUNC0(range.data, quad->mvp, sizeof(*quad->mvp));

         set = FUNC8(
               vk->context->device,
               &vk->chain->descriptor_manager);

         FUNC10(
               vk->context->device,
               set,
               range.buffer,
               range.offset,
               sizeof(*quad->mvp),
               quad->texture,
               quad->sampler);

         FUNC2(vk->cmd, VK_PIPELINE_BIND_POINT_GRAPHICS,
               vk->pipelines.layout, 0,
               1, &set, 0, NULL);

         vk->tracker.view    = quad->texture->view;
         vk->tracker.sampler = quad->sampler;
         vk->tracker.mvp     = *quad->mvp;
      }
   }

   /* Upload VBO */
   {
      struct vk_buffer_range range;
      if (!FUNC6(vk->context, &vk->chain->vbo,
               6 * sizeof(struct vk_vertex), &range))
         return;

      FUNC11((struct vk_vertex*)range.data,
            0.0f, 0.0f, 1.0f, 1.0f,
            0.0f, 0.0f, 1.0f, 1.0f,
            &quad->color);

      FUNC4(vk->cmd, 0, 1,
            &range.buffer, &range.offset);
   }

   /* Draw the quad */
   FUNC5(vk->cmd, 6, 1, 0, 0);
}