
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vulkan_emulated_mailbox {int dead; scalar_t__ cond; scalar_t__ lock; scalar_t__ thread; } ;


 int memset (struct vulkan_emulated_mailbox*,int ,int) ;
 int scond_free (scalar_t__) ;
 int scond_signal (scalar_t__) ;
 int slock_free (scalar_t__) ;
 int slock_lock (scalar_t__) ;
 int slock_unlock (scalar_t__) ;
 int sthread_join (scalar_t__) ;

void vulkan_emulated_mailbox_deinit(struct vulkan_emulated_mailbox *mailbox)
{
   if (mailbox->thread)
   {
      slock_lock(mailbox->lock);
      mailbox->dead = 1;
      scond_signal(mailbox->cond);
      slock_unlock(mailbox->lock);
      sthread_join(mailbox->thread);
   }

   if (mailbox->lock)
      slock_free(mailbox->lock);
   if (mailbox->cond)
      scond_free(mailbox->cond);

   memset(mailbox, 0, sizeof(*mailbox));
}
