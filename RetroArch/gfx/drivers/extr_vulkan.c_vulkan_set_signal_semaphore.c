
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signal_semaphore; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
typedef TYPE_2__ vk_t ;
typedef int VkSemaphore ;



__attribute__((used)) static void vulkan_set_signal_semaphore(void *handle, VkSemaphore semaphore)
{
   vk_t *vk = (vk_t*)handle;
   vk->hw.signal_semaphore = semaphore;
}
