#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int capacity_cmd; int num_cmd; int /*<<< orphan*/ * cmd; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
typedef  TYPE_2__ vk_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  VkCommandBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *handle, uint32_t num_cmd,
      const VkCommandBuffer *cmd)
{
   vk_t *vk                   = (vk_t*)handle;
   unsigned required_capacity = num_cmd + 1;
   if (required_capacity > vk->hw.capacity_cmd)
   {
      VkCommandBuffer *hw_cmd = (VkCommandBuffer*)
         FUNC1(vk->hw.cmd,
            sizeof(VkCommandBuffer) * required_capacity);

      /* If this fails, we're just screwed. */
      FUNC2(hw_cmd);

      vk->hw.cmd          = hw_cmd;
      vk->hw.capacity_cmd = required_capacity;
   }

   vk->hw.num_cmd = num_cmd;
   FUNC0(vk->hw.cmd, cmd, sizeof(VkCommandBuffer) * num_cmd);
}