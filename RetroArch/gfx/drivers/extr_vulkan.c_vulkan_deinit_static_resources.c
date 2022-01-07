
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_7__* staging; } ;
struct TYPE_11__ {int wait_dst_stages; int cmd; } ;
struct TYPE_15__ {scalar_t__ memory; } ;
struct TYPE_10__ {TYPE_7__ blank_texture; } ;
struct TYPE_9__ {int cache; } ;
struct TYPE_14__ {TYPE_5__ readback; TYPE_4__* context; TYPE_3__ hw; int staging_pool; TYPE_2__ display; TYPE_1__ pipelines; } ;
typedef TYPE_6__ vk_t ;
struct TYPE_12__ {int device; } ;


 scalar_t__ VK_NULL_HANDLE ;
 unsigned int VULKAN_MAX_SWAPCHAIN_IMAGES ;
 int free (int ) ;
 int vkDestroyCommandPool (int ,int ,int *) ;
 int vkDestroyPipelineCache (int ,int ,int *) ;
 int vulkan_destroy_texture (int ,TYPE_7__*) ;

__attribute__((used)) static void vulkan_deinit_static_resources(vk_t *vk)
{
   unsigned i;
   vkDestroyPipelineCache(vk->context->device,
         vk->pipelines.cache, ((void*)0));
   vulkan_destroy_texture(
         vk->context->device,
         &vk->display.blank_texture);

   vkDestroyCommandPool(vk->context->device,
         vk->staging_pool, ((void*)0));
   free(vk->hw.cmd);
   free(vk->hw.wait_dst_stages);

   for (i = 0; i < VULKAN_MAX_SWAPCHAIN_IMAGES; i++)
      if (vk->readback.staging[i].memory != VK_NULL_HANDLE)
         vulkan_destroy_texture(
               vk->context->device,
               &vk->readback.staging[i]);
}
