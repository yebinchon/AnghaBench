
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vulkan_emulated_mailbox {int request_acquire; scalar_t__ result; int acquired; int device; int lock; int cond; int index; int swapchain; scalar_t__ dead; } ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ VkFenceCreateInfo ;
typedef int VkFence ;


 int UINT64_MAX ;
 int VK_NULL_HANDLE ;
 int VK_STRUCTURE_TYPE_FENCE_CREATE_INFO ;
 scalar_t__ VK_SUCCESS ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 scalar_t__ vkAcquireNextImageKHR (int ,int ,int ,int ,int ,int *) ;
 int vkCreateFence (int ,TYPE_1__*,int *,int *) ;
 int vkDestroyFence (int ,int ,int *) ;
 int vkResetFences (int ,int,int *) ;
 int vkWaitForFences (int ,int,int *,int,int ) ;

__attribute__((used)) static void vulkan_emulated_mailbox_loop(void *userdata)
{
   VkFence fence;
   VkFenceCreateInfo info = { VK_STRUCTURE_TYPE_FENCE_CREATE_INFO };
   struct vulkan_emulated_mailbox *mailbox = (struct vulkan_emulated_mailbox*)userdata;

   if (!mailbox)
      return;

   vkCreateFence(mailbox->device, &info, ((void*)0), &fence);

   for (;;)
   {
      slock_lock(mailbox->lock);
      while (!mailbox->dead && !mailbox->request_acquire)
         scond_wait(mailbox->cond, mailbox->lock);

      if (mailbox->dead)
      {
         slock_unlock(mailbox->lock);
         break;
      }

      mailbox->request_acquire = 0;
      slock_unlock(mailbox->lock);

      mailbox->result = vkAcquireNextImageKHR(mailbox->device, mailbox->swapchain, UINT64_MAX,
            VK_NULL_HANDLE, fence, &mailbox->index);

      if (mailbox->result == VK_SUCCESS)
         vkWaitForFences(mailbox->device, 1, &fence, 1, UINT64_MAX);
      vkResetFences(mailbox->device, 1, &fence);

      if (mailbox->result == VK_SUCCESS)
      {
         slock_lock(mailbox->lock);
         mailbox->acquired = 1;
         scond_signal(mailbox->cond);
         slock_unlock(mailbox->lock);
      }
   }

   vkDestroyFence(mailbox->device, fence, ((void*)0));
}
