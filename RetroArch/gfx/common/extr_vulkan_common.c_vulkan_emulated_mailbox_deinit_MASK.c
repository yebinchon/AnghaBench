#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vulkan_emulated_mailbox {int dead; scalar_t__ cond; scalar_t__ lock; scalar_t__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vulkan_emulated_mailbox*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(struct vulkan_emulated_mailbox *mailbox)
{
   if (mailbox->thread)
   {
      FUNC4(mailbox->lock);
      mailbox->dead = true;
      FUNC2(mailbox->cond);
      FUNC5(mailbox->lock);
      FUNC6(mailbox->thread);
   }

   if (mailbox->lock)
      FUNC3(mailbox->lock);
   if (mailbox->cond)
      FUNC1(mailbox->cond);

   FUNC0(mailbox, 0, sizeof(*mailbox));
}