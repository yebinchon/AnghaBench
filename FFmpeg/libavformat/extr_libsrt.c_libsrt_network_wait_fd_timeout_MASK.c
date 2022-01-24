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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  URLContext ;
typedef  int /*<<< orphan*/  AVIOInterruptCB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXIT ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static int FUNC4(URLContext *h, int eid, int fd, int write, int64_t timeout, AVIOInterruptCB *int_cb)
{
    int ret;
    int64_t wait_start = 0;

    while (1) {
        if (FUNC2(int_cb))
            return AVERROR_EXIT;
        ret = FUNC3(h, eid, fd, write);
        if (ret != FUNC0(EAGAIN))
            return ret;
        if (timeout > 0) {
            if (!wait_start)
                wait_start = FUNC1();
            else if (FUNC1() - wait_start > timeout)
                return FUNC0(ETIMEDOUT);
        }
    }
}