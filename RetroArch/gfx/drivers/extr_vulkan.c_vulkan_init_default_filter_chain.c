
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


struct TYPE_14__ {scalar_t__ smooth; } ;
struct TYPE_9__ {int cache; } ;
struct TYPE_15__ {int filter_chain; TYPE_6__ video; int tex_fmt; TYPE_5__* context; int render_pass; int vk_vp; int tex_h; int tex_w; TYPE_2__* swapchain; TYPE_1__ pipelines; } ;
typedef TYPE_7__ vk_t ;
struct TYPE_12__ {int num_indices; int render_pass; int format; int viewport; } ;
struct TYPE_11__ {int height; int width; } ;
struct vulkan_filter_chain_create_info {int original_format; TYPE_4__ swapchain; TYPE_3__ max_input_size; int command_pool; int queue; int pipeline_cache; int * memory_properties; int gpu; int device; } ;
typedef int info ;
struct TYPE_13__ {size_t current_swapchain_index; int num_swapchain_images; int swapchain_format; int queue; int memory_properties; int gpu; int device; } ;
struct TYPE_10__ {int cmd_pool; } ;


 int RARCH_ERR (char*) ;
 int VULKAN_FILTER_CHAIN_LINEAR ;
 int VULKAN_FILTER_CHAIN_NEAREST ;
 int memset (struct vulkan_filter_chain_create_info*,int ,int) ;
 int vulkan_filter_chain_create_default (struct vulkan_filter_chain_create_info*,int ) ;

__attribute__((used)) static bool vulkan_init_default_filter_chain(vk_t *vk)
{
   struct vulkan_filter_chain_create_info info;

   memset(&info, 0, sizeof(info));

   if (!vk->context)
      return 0;

   info.device = vk->context->device;
   info.gpu = vk->context->gpu;
   info.memory_properties = &vk->context->memory_properties;
   info.pipeline_cache = vk->pipelines.cache;
   info.queue = vk->context->queue;
   info.command_pool = vk->swapchain[vk->context->current_swapchain_index].cmd_pool;
   info.max_input_size.width = vk->tex_w;
   info.max_input_size.height = vk->tex_h;
   info.swapchain.viewport = vk->vk_vp;
   info.swapchain.format = vk->context->swapchain_format;
   info.swapchain.render_pass = vk->render_pass;
   info.swapchain.num_indices = vk->context->num_swapchain_images;
   info.original_format = vk->tex_fmt;

   vk->filter_chain = vulkan_filter_chain_create_default(
         &info,
         vk->video.smooth ?
         VULKAN_FILTER_CHAIN_LINEAR : VULKAN_FILTER_CHAIN_NEAREST);

   if (!vk->filter_chain)
   {
      RARCH_ERR("Failed to create filter chain.\n");
      return 0;
   }

   return 1;
}
