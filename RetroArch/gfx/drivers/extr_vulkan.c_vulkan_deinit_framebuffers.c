
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {unsigned int num_swapchain_images; int render_pass; TYPE_3__* context; TYPE_2__* swapchain; } ;
typedef TYPE_4__ vk_t ;
struct TYPE_8__ {int device; } ;
struct TYPE_6__ {scalar_t__ view; scalar_t__ framebuffer; } ;
struct TYPE_7__ {TYPE_1__ backbuffer; } ;


 int vkDestroyFramebuffer (int ,scalar_t__,int *) ;
 int vkDestroyImageView (int ,scalar_t__,int *) ;
 int vkDestroyRenderPass (int ,int ,int *) ;

__attribute__((used)) static void vulkan_deinit_framebuffers(vk_t *vk)
{
   unsigned i;
   for (i = 0; i < vk->num_swapchain_images; i++)
   {
      if (vk->swapchain[i].backbuffer.framebuffer)
      {
         vkDestroyFramebuffer(vk->context->device,
               vk->swapchain[i].backbuffer.framebuffer, ((void*)0));
      }

      if (vk->swapchain[i].backbuffer.view)
      {
         vkDestroyImageView(vk->context->device,
               vk->swapchain[i].backbuffer.view, ((void*)0));
      }
   }

   vkDestroyRenderPass(vk->context->device, vk->render_pass, ((void*)0));
}
