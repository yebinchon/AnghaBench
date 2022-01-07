
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* context; } ;
typedef TYPE_2__ vk_t ;
struct vk_texture {int dummy; } ;
struct TYPE_3__ {int device; int queue_lock; int queue; } ;


 int free (struct vk_texture*) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int vkQueueWaitIdle (int ) ;
 int vulkan_destroy_texture (int ,struct vk_texture*) ;

__attribute__((used)) static void vulkan_unload_texture(void *data, uintptr_t handle)
{
   vk_t *vk = (vk_t*)data;
   struct vk_texture *texture = (struct vk_texture*)handle;
   if (!texture || !vk)
      return;






   vkQueueWaitIdle(vk->context->queue);



   vulkan_destroy_texture(
         vk->context->device, texture);
   free(texture);
}
