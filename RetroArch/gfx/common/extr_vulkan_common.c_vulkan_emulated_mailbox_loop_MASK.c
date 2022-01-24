#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vulkan_emulated_mailbox {int request_acquire; scalar_t__ result; int acquired; int /*<<< orphan*/  device; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  index; int /*<<< orphan*/  swapchain; scalar_t__ dead; } ;
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ VkFenceCreateInfo ;
typedef  int /*<<< orphan*/  VkFence ;

/* Variables and functions */
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  VK_NULL_HANDLE ; 
 int /*<<< orphan*/  VK_STRUCTURE_TYPE_FENCE_CREATE_INFO ; 
 scalar_t__ VK_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *userdata)
{
   VkFence fence;
   VkFenceCreateInfo info = { VK_STRUCTURE_TYPE_FENCE_CREATE_INFO };
   struct vulkan_emulated_mailbox *mailbox = (struct vulkan_emulated_mailbox*)userdata;

   if (!mailbox)
      return;

   FUNC5(mailbox->device, &info, NULL, &fence);

   for (;;)
   {
      FUNC2(mailbox->lock);
      while (!mailbox->dead && !mailbox->request_acquire)
         FUNC1(mailbox->cond, mailbox->lock);

      if (mailbox->dead)
      {
         FUNC3(mailbox->lock);
         break;
      }

      mailbox->request_acquire = false;
      FUNC3(mailbox->lock);

      mailbox->result = FUNC4(mailbox->device, mailbox->swapchain, UINT64_MAX,
            VK_NULL_HANDLE, fence, &mailbox->index);

      if (mailbox->result == VK_SUCCESS)
         FUNC8(mailbox->device, 1, &fence, true, UINT64_MAX);
      FUNC7(mailbox->device, 1, &fence);

      if (mailbox->result == VK_SUCCESS)
      {
         FUNC2(mailbox->lock);
         mailbox->acquired = true;
         FUNC0(mailbox->cond);
         FUNC3(mailbox->lock);
      }
   }

   FUNC6(mailbox->device, fence, NULL);
}