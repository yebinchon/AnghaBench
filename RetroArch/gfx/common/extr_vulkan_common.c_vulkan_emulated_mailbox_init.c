
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vulkan_emulated_mailbox {int thread; int lock; int cond; int swapchain; int device; } ;
typedef int VkSwapchainKHR ;
typedef int VkDevice ;


 int memset (struct vulkan_emulated_mailbox*,int ,int) ;
 int scond_new () ;
 int slock_new () ;
 int sthread_create (int ,struct vulkan_emulated_mailbox*) ;
 int vulkan_emulated_mailbox_loop ;

bool vulkan_emulated_mailbox_init(struct vulkan_emulated_mailbox *mailbox,
   VkDevice device,
   VkSwapchainKHR swapchain)
{
   memset(mailbox, 0, sizeof(*mailbox));
   mailbox->device = device;
   mailbox->swapchain = swapchain;

   mailbox->cond = scond_new();
   if (!mailbox->cond)
      return 0;
   mailbox->lock = slock_new();
   if (!mailbox->lock)
      return 0;
   mailbox->thread = sthread_create(vulkan_emulated_mailbox_loop, mailbox);
   if (!mailbox->thread)
      return 0;
   return 1;
}
