#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* context; } ;
typedef  TYPE_2__ vk_t ;
struct TYPE_7__ {int invalid_swapchain; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(vk_t *vk)
{
   if (vk->context->invalid_swapchain)
   {
#ifdef HAVE_THREADS
      slock_lock(vk->context->queue_lock);
#endif
      FUNC2(vk->context->queue);
#ifdef HAVE_THREADS
      slock_unlock(vk->context->queue_lock);
#endif

      FUNC3(vk);
      FUNC4(vk);
      vk->context->invalid_swapchain = false;

      FUNC5(vk);
   }
}