#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vulkan_filter_chain_t ;
struct TYPE_9__ {int /*<<< orphan*/  scaler_rgb; int /*<<< orphan*/  scaler_bgr; } ;
struct TYPE_11__ {TYPE_1__ readback; scalar_t__ filter_chain; TYPE_2__* context; } ;
typedef  TYPE_3__ vk_t ;
struct TYPE_10__ {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; scalar_t__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC12(void *data)
{
   vk_t *vk = (vk_t*)data;
   if (!vk)
      return;

   if (vk->context && vk->context->device)
   {
#ifdef HAVE_THREADS
      slock_lock(vk->context->queue_lock);
#endif
      FUNC6(vk->context->queue);
#ifdef HAVE_THREADS
      slock_unlock(vk->context->queue_lock);
#endif
      FUNC8(vk);

      /* No need to init this since textures are create on-demand. */
      FUNC7(vk);

      FUNC0();

      FUNC9(vk);
#ifdef HAVE_OVERLAY
      vulkan_overlay_free(vk);
#endif

      if (vk->filter_chain)
         FUNC10((vulkan_filter_chain_t*)vk->filter_chain);

      FUNC5();
   }

   FUNC2(&vk->readback.scaler_bgr);
   FUNC2(&vk->readback.scaler_rgb);
   FUNC1(vk);
}