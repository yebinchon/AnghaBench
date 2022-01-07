
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_semaphores; int valid_semaphore; scalar_t__ src_queue_family; int * wait_dst_stages; int const* semaphores; struct retro_vulkan_image const* image; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
typedef TYPE_2__ vk_t ;
typedef scalar_t__ uint32_t ;
struct retro_vulkan_image {int dummy; } ;
typedef int VkSemaphore ;
typedef int VkPipelineStageFlags ;


 int VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT ;
 scalar_t__ realloc (int *,int) ;
 int retro_assert (int *) ;

__attribute__((used)) static void vulkan_set_image(void *handle,
      const struct retro_vulkan_image *image,
      uint32_t num_semaphores,
      const VkSemaphore *semaphores,
      uint32_t src_queue_family)
{
   unsigned i;
   vk_t *vk = (vk_t*)handle;

   vk->hw.image = image;
   vk->hw.num_semaphores = num_semaphores;
   vk->hw.semaphores = semaphores;

   if (num_semaphores > 0)
   {
      VkPipelineStageFlags *stage_flags = (VkPipelineStageFlags*)
         realloc(vk->hw.wait_dst_stages,
            sizeof(VkPipelineStageFlags) * vk->hw.num_semaphores);


      retro_assert(stage_flags);

      vk->hw.wait_dst_stages = stage_flags;

      for (i = 0; i < vk->hw.num_semaphores; i++)
         vk->hw.wait_dst_stages[i] = VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT;

      vk->hw.valid_semaphore = 1;
      vk->hw.src_queue_family = src_queue_family;
   }
}
