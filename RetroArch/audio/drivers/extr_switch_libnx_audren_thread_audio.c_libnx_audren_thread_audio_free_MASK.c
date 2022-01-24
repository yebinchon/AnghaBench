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
struct TYPE_3__ {int running; scalar_t__ fifo; struct TYPE_3__* mempool; int /*<<< orphan*/  drv; int /*<<< orphan*/  thread; int /*<<< orphan*/  fifo_lock; } ;
typedef  TYPE_1__ libnx_audren_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *data)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;

   if (!aud)
      return;

   aud->running = false;
   FUNC6(&aud->fifo_lock);
   FUNC8(&aud->thread);
   FUNC7(&aud->thread);
   FUNC2(&aud->drv, 0);
   FUNC1(&aud->drv);
   FUNC0();

   if (aud->mempool)
   {
      FUNC5(aud->mempool);
   }

   if (aud->fifo)
   {
      FUNC3(aud->fifo);
      FUNC4(aud->fifo);
   }

   FUNC5(aud);
}