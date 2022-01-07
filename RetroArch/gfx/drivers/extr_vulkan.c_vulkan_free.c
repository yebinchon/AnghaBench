
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vulkan_filter_chain_t ;
struct TYPE_9__ {int scaler_rgb; int scaler_bgr; } ;
struct TYPE_11__ {TYPE_1__ readback; scalar_t__ filter_chain; TYPE_2__* context; } ;
typedef TYPE_3__ vk_t ;
struct TYPE_10__ {int queue_lock; int queue; scalar_t__ device; } ;


 int font_driver_free_osd () ;
 int free (TYPE_3__*) ;
 int scaler_ctx_gen_reset (int *) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int video_context_driver_free () ;
 int vkQueueWaitIdle (int ) ;
 int vulkan_deinit_menu (TYPE_3__*) ;
 int vulkan_deinit_resources (TYPE_3__*) ;
 int vulkan_deinit_static_resources (TYPE_3__*) ;
 int vulkan_filter_chain_free (int *) ;
 int vulkan_overlay_free (TYPE_3__*) ;

__attribute__((used)) static void vulkan_free(void *data)
{
   vk_t *vk = (vk_t*)data;
   if (!vk)
      return;

   if (vk->context && vk->context->device)
   {



      vkQueueWaitIdle(vk->context->queue);



      vulkan_deinit_resources(vk);


      vulkan_deinit_menu(vk);

      font_driver_free_osd();

      vulkan_deinit_static_resources(vk);




      if (vk->filter_chain)
         vulkan_filter_chain_free((vulkan_filter_chain_t*)vk->filter_chain);

      video_context_driver_free();
   }

   scaler_ctx_gen_reset(&vk->readback.scaler_bgr);
   scaler_ctx_gen_reset(&vk->readback.scaler_rgb);
   free(vk);
}
