#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* buf_t ;
struct TYPE_4__ {int b_tag; int /*<<< orphan*/  b_lflags; int /*<<< orphan*/  b_owner; } ;

/* Variables and functions */
 int BL_BUSY ; 
 int BL_WANTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  buf_busycount ; 
 int /*<<< orphan*/  buf_mtxp ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(buf_t bp)
{
        int need_wakeup = 0;

	FUNC3(buf_mtxp);

	if (FUNC1(bp->b_lflags, BL_WANTED)) {
	        /*	
		 * delay the actual wakeup until after we
		 * clear BL_BUSY and we've dropped buf_mtxp
		 */
		need_wakeup = 1;
	}
#ifdef JOE_DEBUG
	bp->b_owner = current_thread();
	bp->b_tag   = 9;
#endif
	/*
	 * Unlock the buffer.
	 */
	FUNC0(bp->b_lflags, (BL_BUSY | BL_WANTED));
	buf_busycount--;

	FUNC4(buf_mtxp);

	if (need_wakeup) {
	        /*
		 * Wake up any proceeses waiting for _this_ buffer to become free.
		 */
	        FUNC5(bp);
	}
}