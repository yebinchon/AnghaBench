
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vulkan_filter_chain_t ;
struct TYPE_5__ {scalar_t__ filter_chain; TYPE_1__* context; int render_pass; int vk_vp; } ;
typedef TYPE_2__ vk_t ;
struct vulkan_filter_chain_swapchain_info {int num_indices; int render_pass; int format; int viewport; } ;
struct TYPE_4__ {int num_swapchain_images; int swapchain_format; } ;


 int RARCH_ERR (char*) ;
 int vulkan_filter_chain_update_swapchain_info (int *,struct vulkan_filter_chain_swapchain_info*) ;

__attribute__((used)) static void vulkan_update_filter_chain(vk_t *vk)
{
   struct vulkan_filter_chain_swapchain_info info;

   info.viewport = vk->vk_vp;
   info.format = vk->context->swapchain_format;
   info.render_pass = vk->render_pass;
   info.num_indices = vk->context->num_swapchain_images;

   if (!vulkan_filter_chain_update_swapchain_info((vulkan_filter_chain_t*)vk->filter_chain, &info))
      RARCH_ERR("Failed to update filter chain info. This will probably lead to a crash ...\n");
}
