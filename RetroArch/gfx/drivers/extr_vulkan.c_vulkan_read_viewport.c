
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int height; int width; } ;
struct scaler_ctx {int out_stride; int in_stride; } ;
struct TYPE_6__ {int pending; struct scaler_ctx scaler_bgr; struct scaler_ctx scaler_rgb; scalar_t__ streamed; struct vk_texture* staging; } ;
struct TYPE_9__ {TYPE_3__* context; TYPE_2__ vp; TYPE_1__ readback; } ;
typedef TYPE_4__ vk_t ;
typedef int uint8_t ;
struct vk_texture {scalar_t__ memory; int stride; scalar_t__ mapped; int size; int offset; } ;
struct TYPE_8__ {size_t current_swapchain_index; int swapchain_format; int device; int queue_lock; int queue; } ;


 int RARCH_ERR (char*) ;



 scalar_t__ VK_NULL_HANDLE ;
 int scaler_ctx_scale_direct (struct scaler_ctx*,int *,int const*) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int video_driver_cached_frame () ;
 int vkMapMemory (int ,scalar_t__,int ,int ,int ,void**) ;
 int vkQueueWaitIdle (int ) ;
 int vkUnmapMemory (int ,scalar_t__) ;
 int vulkan_destroy_texture (int ,struct vk_texture*) ;
 int vulkan_map_persistent_texture (int ,struct vk_texture*) ;
 int vulkan_sync_texture_to_cpu (TYPE_4__*,struct vk_texture*) ;

__attribute__((used)) static bool vulkan_read_viewport(void *data, uint8_t *buffer, bool is_idle)
{
   struct vk_texture *staging = ((void*)0);
   vk_t *vk = (vk_t*)data;

   if (!vk)
      return 0;

   staging = &vk->readback.staging[vk->context->current_swapchain_index];

   if (vk->readback.streamed)
   {
      const uint8_t *src = ((void*)0);
      struct scaler_ctx *ctx = ((void*)0);

      switch (vk->context->swapchain_format)
      {
         case 128:
         case 130:
            ctx = &vk->readback.scaler_rgb;
            break;

         case 129:
            ctx = &vk->readback.scaler_bgr;
            break;

         default:
            RARCH_ERR("[Vulkan]: Unexpected swapchain format. Cannot readback.\n");
            break;
      }

      if (ctx)
      {
         if (staging->memory == VK_NULL_HANDLE)
            return 0;

         buffer += 3 * (vk->vp.height - 1) * vk->vp.width;
         vkMapMemory(vk->context->device, staging->memory,
               staging->offset, staging->size, 0, (void**)&src);

         vulkan_sync_texture_to_cpu(vk, staging);

         ctx->in_stride = staging->stride;
         ctx->out_stride = -(int)vk->vp.width * 3;
         scaler_ctx_scale_direct(ctx, buffer, src);

         vkUnmapMemory(vk->context->device, staging->memory);
      }
   }
   else
   {





      vk->readback.pending = 1;

      if (!is_idle)
         video_driver_cached_frame();




      vkQueueWaitIdle(vk->context->queue);




      if (!staging->mapped)
         vulkan_map_persistent_texture(
               vk->context->device, staging);

      vulkan_sync_texture_to_cpu(vk, staging);

      {
         unsigned x, y;
         const uint8_t *src = (const uint8_t*)staging->mapped;
         buffer += 3 * (vk->vp.height - 1) * vk->vp.width;

         switch (vk->context->swapchain_format)
         {
            case 129:
               for (y = 0; y < vk->vp.height; y++,
                     src += staging->stride, buffer -= 3 * vk->vp.width)
               {
                  for (x = 0; x < vk->vp.width; x++)
                  {
                     buffer[3 * x + 0] = src[4 * x + 0];
                     buffer[3 * x + 1] = src[4 * x + 1];
                     buffer[3 * x + 2] = src[4 * x + 2];
                  }
               }
               break;

            case 128:
            case 130:
               for (y = 0; y < vk->vp.height; y++,
                     src += staging->stride, buffer -= 3 * vk->vp.width)
               {
                  for (x = 0; x < vk->vp.width; x++)
                  {
                     buffer[3 * x + 2] = src[4 * x + 0];
                     buffer[3 * x + 1] = src[4 * x + 1];
                     buffer[3 * x + 0] = src[4 * x + 2];
                  }
               }
               break;

            default:
               RARCH_ERR("[Vulkan]: Unexpected swapchain format.\n");
               break;
         }
      }
      vulkan_destroy_texture(
            vk->context->device, staging);
   }
   return 1;
}
