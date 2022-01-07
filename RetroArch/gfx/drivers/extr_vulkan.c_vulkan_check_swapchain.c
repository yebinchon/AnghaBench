
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* context; } ;
typedef TYPE_2__ vk_t ;
struct TYPE_7__ {int invalid_swapchain; int queue_lock; int queue; } ;


 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int vkQueueWaitIdle (int ) ;
 int vulkan_deinit_resources (TYPE_2__*) ;
 int vulkan_init_resources (TYPE_2__*) ;
 int vulkan_update_filter_chain (TYPE_2__*) ;

__attribute__((used)) static void vulkan_check_swapchain(vk_t *vk)
{
   if (vk->context->invalid_swapchain)
   {



      vkQueueWaitIdle(vk->context->queue);




      vulkan_deinit_resources(vk);
      vulkan_init_resources(vk);
      vk->context->invalid_swapchain = 0;

      vulkan_update_filter_chain(vk);
   }
}
