#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_5__ {int /*<<< orphan*/  on_reply; } ;
struct TYPE_6__ {int /*<<< orphan*/  sem; int /*<<< orphan*/  lock; TYPE_1__ waiter; } ;
typedef  TYPE_2__ VCOS_MSGQUEUE_T ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vcos_msgq_queue_waiter_on_reply ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VCOS_STATUS_T FUNC4(VCOS_MSGQUEUE_T *q, const char *name)
{
   VCOS_STATUS_T st;

   FUNC0(q, 0, sizeof(*q));

   q->waiter.on_reply = vcos_msgq_queue_waiter_on_reply;
   st = FUNC2(&q->sem, name, 0);
   if (st != VCOS_SUCCESS)
      goto fail_sem;

   st = FUNC1(&q->lock, name);
   if (st != VCOS_SUCCESS)
      goto fail_mtx;

   return st;

fail_mtx:
   FUNC3(&q->sem);
fail_sem:
   return st;
}