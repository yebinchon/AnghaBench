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
struct vm_pageout_queue {scalar_t__ pgo_laundry; scalar_t__ pgo_throttled; scalar_t__ pgo_draining; } ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_page_queue_lock ; 
 int /*<<< orphan*/  vm_pageout_throttle_up_count ; 

__attribute__((used)) static void
FUNC3(
	struct vm_pageout_queue *q,
	int		batch_cnt)
{
       FUNC0(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);

       FUNC1(vm_pageout_throttle_up_count, batch_cnt);

       q->pgo_laundry -= batch_cnt;

       if (q->pgo_throttled == TRUE) {
	       q->pgo_throttled = FALSE;
	       FUNC2((event_t) &q->pgo_laundry);
       }
       if (q->pgo_draining == TRUE && q->pgo_laundry == 0) {
	       q->pgo_draining = FALSE;
	       FUNC2((event_t) (&q->pgo_laundry+1));
       }
}