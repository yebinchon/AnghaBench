
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vulkan_emulated_mailbox {scalar_t__ swapchain; int has_pending_request; int request_acquire; int acquired; scalar_t__ result; unsigned int index; int lock; int cond; } ;
typedef scalar_t__ VkResult ;


 scalar_t__ VK_ERROR_OUT_OF_DATE_KHR ;
 scalar_t__ VK_NULL_HANDLE ;
 scalar_t__ VK_SUCCESS ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

VkResult vulkan_emulated_mailbox_acquire_next_image_blocking(
      struct vulkan_emulated_mailbox *mailbox,
      unsigned *index)
{
   VkResult res;
   if (mailbox->swapchain == VK_NULL_HANDLE)
      return VK_ERROR_OUT_OF_DATE_KHR;

   slock_lock(mailbox->lock);

   if (!mailbox->has_pending_request)
   {
      mailbox->request_acquire = 1;
      scond_signal(mailbox->cond);
   }

   mailbox->has_pending_request = 1;

   while (!mailbox->acquired)
      scond_wait(mailbox->cond, mailbox->lock);

   res = mailbox->result;
   if (res == VK_SUCCESS)
      *index = mailbox->index;
   mailbox->has_pending_request = 0;
   mailbox->acquired = 0;

   slock_unlock(mailbox->lock);
   return res;
}
