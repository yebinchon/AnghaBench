
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int capacity_cmd; int num_cmd; int * cmd; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
typedef TYPE_2__ vk_t ;
typedef int uint32_t ;
typedef int VkCommandBuffer ;


 int memcpy (int *,int const*,int) ;
 scalar_t__ realloc (int *,int) ;
 int retro_assert (int *) ;

__attribute__((used)) static void vulkan_set_command_buffers(void *handle, uint32_t num_cmd,
      const VkCommandBuffer *cmd)
{
   vk_t *vk = (vk_t*)handle;
   unsigned required_capacity = num_cmd + 1;
   if (required_capacity > vk->hw.capacity_cmd)
   {
      VkCommandBuffer *hw_cmd = (VkCommandBuffer*)
         realloc(vk->hw.cmd,
            sizeof(VkCommandBuffer) * required_capacity);


      retro_assert(hw_cmd);

      vk->hw.cmd = hw_cmd;
      vk->hw.capacity_cmd = required_capacity;
   }

   vk->hw.num_cmd = num_cmd;
   memcpy(vk->hw.cmd, cmd, sizeof(VkCommandBuffer) * num_cmd);
}
