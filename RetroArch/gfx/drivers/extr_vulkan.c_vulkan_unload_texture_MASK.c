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
struct TYPE_4__ {TYPE_1__* context; } ;
typedef  TYPE_2__ vk_t ;
struct vk_texture {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vk_texture*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vk_texture*) ; 

__attribute__((used)) static void FUNC5(void *data, uintptr_t handle)
{
   vk_t *vk                         = (vk_t*)data;
   struct vk_texture *texture       = (struct vk_texture*)handle;
   if (!texture || !vk)
      return;

   /* TODO: We really want to defer this deletion instead,
    * but this will do for now. */
#ifdef HAVE_THREADS
   slock_lock(vk->context->queue_lock);
#endif
   FUNC3(vk->context->queue);
#ifdef HAVE_THREADS
   slock_unlock(vk->context->queue_lock);
#endif
   FUNC4(
         vk->context->device, texture);
   FUNC0(texture);
}